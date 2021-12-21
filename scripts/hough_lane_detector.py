import cv2
import os
import numpy as np
from base_detector import Detector

def empty_dir(dir_path):
    for f in os.listdir(dir_path):
        file_path = os.path.join(dir_path, f)
        if os.path.isfile(file_path):
            os.remove(file_path)

class HoughDetector(Detector):
    def __init__(self) -> None:
        super().__init__()
        self.canny_lthreshold = 300
        self.canny_hthreshold = 500
        self.rho = 1
        self.theta = np.pi/180
        self.threshold = 55
        self.min_line_length = 200
        self.max_line_gap = 50
        self.image_size = (1280, 720)
        self.mask_level = 520

        self.image_name = None
        self.origin_image = None
        self.edges_image = None
        self.masked_edges_image = None
        self.output_image = None
        
        self.out_dir = "../outputs"
        for dir in os.listdir(self.out_dir):
            if os.path.isdir(os.path.join(self.out_dir, dir)):
                empty_dir(os.path.join(self.out_dir, dir))
        
    def _preprocess(self):
        # Resize image
        self.origin_image = cv2.resize(self.origin_image, self.image_size)
        
    def _detect_edge(self):
        # Canny edge detection
        gray = cv2.cvtColor(self.origin_image, cv2.COLOR_RGB2GRAY)
        self.edges_image = cv2.Canny(gray, self.canny_lthreshold, self.canny_hthreshold)

    def _mask(self, vertics):
        # Make a square mask to make the detector focus on the road area
        mask = np.zeros_like(self.edges_image)
        mask_color = 255
        cv2.fillPoly(mask, [vertics], mask_color)
        return mask
    
    def _get_masked_image(self):
        # Filter the image with a square mask
        left_bottom = [0, self.image_size[1]]
        right_bottom = [self.image_size[0], self.image_size[1]]
        left_top = [0, self.mask_level]
        right_top = [self.image_size[0], self.mask_level]
        # apex = [self.image_size[1]/2, 500]
        vertices = np.array([left_bottom, right_bottom, right_top, left_top], np.int32)
        mask = self._mask(vertices)
        self.masked_edges_image = cv2.bitwise_and(self.edges_image, mask)
        
    def _cluster(self, params):
            """
            There are often multiple lines for a single lane detected by the hough 
            detector. We need to find out with lines are actually the same lane.
            We do this with clustering
            """
            
            k_threshold = 0.5
            bar_threshold = 100
            cluster_dict = {}
            for (k, b) in params:
                flag = False
                for key in cluster_dict.keys():                    
                    if abs(cluster_dict[key][0][0] - k) < k_threshold \
                    and abs((k * self.image_size[0] / 2 + b) - (cluster_dict[key][0][0] * self.image_size[0] / 2 + cluster_dict[key][0][1])) < bar_threshold:
                    # if abs(cluster_dict[key][0][0] - k) < k_threshold:
                        cluster_dict[key][1].append((k, b))
                        cluster_dict[key][0] = np.mean(cluster_dict[key][1], axis=0)
                        flag = True
                        break
                if flag == False:
                    cluster_dict[len(cluster_dict)] = [(k, b), [(k, b)]]
            cluster_lines = []
            for key in cluster_dict:
                cluster_lines.append(cluster_dict[key][0]) 
            return cluster_lines
        
    def _get_lines(self):
        # Do hough detection on the masked edges
        lines = cv2.HoughLines(self.masked_edges_image, self.rho, self.theta, self.threshold, self.min_line_length, self.max_line_gap)
        params = []
        # self._draw_lines_polar(lines)
        for [[rho, theta]] in lines:
            k = - np.cos(theta) / np.sin(theta)
            b = rho / np.sin(theta)
            # k = np.cos(theta) / np.sin(theta)
            # b = rho / np.sin(theta)
            params.append((k, b))
        clustered_lines = self._cluster(params)
        # clustered_lines = params
        # print(clustered_lines)
        self._draw_lines(clustered_lines)
        # print(clustered_lines)
        return clustered_lines
    
    def _draw_lines_polar(self, lines):
        if len(lines) != 0:
            # for rho, theta in lines:
            for [[rho, theta]] in lines:
                a = np.cos(theta)
                b = np.sin(theta)
                x0 = a * rho
                y0 = b * rho
                x1 = int(x0 + 3000*(-b))
                y1 = int(y0 + 3000*(a))
                x2 = int(x0 - 3000*(-b))
                y2 = int(y0 - 3000*(a))
                self.output_image = cv2.line(self.origin_image,(x1,y1),(x2,y2),(0,0,255),2)
        else:
            print("No lanes detected in image ", self.image_name)
    
    def _draw_lines(self, lines):
        if len(lines) != 0:
            # for rho, theta in lines:
            for (k, b) in lines:
                # print(k, b)
                x1 = int(-3000)
                y1 = int(-3000 * k + b)
                x2 = int(3000)
                y2 = int(3000 * k + b)
                self.output_image = cv2.line(self.origin_image,(x1,y1),(x2,y2),(0,0,255),2)
        else:
            print("No lanes detected in image ", self.image_name)
        
    def save_images(self):
        # To see if it works
        cv2.imwrite(os.path.join(self.out_dir, "edges", self.image_name), self.edges_image)
        cv2.imwrite(os.path.join(self.out_dir, "mask", self.image_name), self.masked_edges_image)
        cv2.imwrite(os.path.join(self.out_dir, "out", self.image_name), self.output_image)

    def process_image(self, image, image_name):
        # This is function you should call
        self.image_name = image_name
        self.origin_image = image
        self._preprocess()
        self._detect_edge()
        self._get_masked_image()
        return self._get_lines()
    
def main():
    input_dir_path = "../inputs/inputs3"
    my_detector = HoughDetector()
    for img_path in os.listdir(input_dir_path):
        if ".png" in img_path:
            print("------", img_path, "------")
            image = cv2.imread(os.path.join(input_dir_path, img_path))
            my_detector.process_image(image, img_path)
            my_detector.save_images()
    
if __name__ == "__main__":
    main()