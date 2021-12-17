import cv2
import os
import numpy as np
from base_detector import Detector


class HoughDetector(Detector):
    def __init__(self, out_dir) -> None:
        super().__init__()
        self.canny_lthreshold = 150
        self.canny_hthreshold = 250
        self.rho = 1
        self.theta = np.pi/180
        self.threshold = 40
        self.min_line_length = 150
        self.max_line_gap = 50
        self.out_dir = out_dir
        self.image_name = None
        
    def preprocess(self, img):
        return cv2.resize(img, (1280, 720))
        
        
    def _detect_edge(self, img):
        gray = cv2.cvtColor(img, cv2.COLOR_RGB2GRAY)
        edges = cv2.Canny(gray, self.canny_lthreshold, self.canny_hthreshold)
        cv2.imwrite(os.path.join(self.out_dir, "edges", self.image_name), edges)
        return edges

    def _roi_mask(self, img, vertics):
        mask = np.zeros_like(img)
        if len(img.shape) > 2:
            channel_count = img.shape[2]
            mask_color = (255,) * channel_count
        else:
            mask_color = 255
        cv2.fillPoly(mask, [vertics], mask_color)
        masked_img = cv2.bitwise_and(img, mask)
        return masked_img
    
    def _get_roi_image(self, img):
        left_bottom = [0, img.shape[0]]
        right_bottom = [img.shape[1], img.shape[0]]
        left_top = [0, 500]
        right_top = [img.shape[1], 500]
        # apex = [img.shape[1]/2, 500]
        vertices = np.array([left_bottom, right_bottom, right_top, left_top], np.int32)
        roi_image = self._roi_mask(img, vertices)
        cv2.imwrite(os.path.join(self.out_dir, "roi", self.image_name), roi_image)
        return roi_image

    def cluster(self, lines):
        rho_threshold = 150
        theta_threshold = 1
        cluster_dict = {}    
        for [[rho, theta]] in lines:
            # print(rho, theta)
            flag = False
            for k in cluster_dict.keys():
                if abs(cluster_dict[k][0][0] - rho) < rho_threshold \
                and abs(cluster_dict[k][0][1] - theta) < theta_threshold:
                    cluster_dict[k][1].append((rho, theta))
                    cluster_dict[k][0] = np.mean(cluster_dict[k][1], axis=0)
                    flag = True
                    break
            if flag == False:
                cluster_dict[len(cluster_dict)] = [(rho, theta), [(rho, theta)]]
                
        return cluster_dict
    
    def _get_lines(self, roi_image):
        lines = cv2.HoughLines(roi_image, self.rho, self.theta, self.threshold, self.min_line_length, self.max_line_gap)
        lines_dict = self.cluster(lines)
        clustered_lines = []
        for k in lines_dict.keys():
            clustered_lines.append(lines_dict[k][0])
        return clustered_lines
    
    def draw_lines(self, img, lines, color = [0, 0, 255], thickness = 2):
        for rho, theta in lines:
            a = np.cos(theta)
            b = np.sin(theta)
            x0 = a*rho
            y0 = b*rho
            x1 = int(x0 + 1000*(-b))
            y1 = int(y0 + 1000*(a))
            x2 = int(x0 - 1000*(-b))
            y2 = int(y0 - 1000*(a))
            img = cv2.line(img,(x1,y1),(x2,y2),(0,0,255),2)
        cv2.imwrite(os.path.join(self.out_dir, "out", self.image_name), img)

    
    def process_image(self, img, image_name):
        self.image_name = image_name
        edges = self._detect_edge(img)
        roi_image = self._get_roi_image(edges)
        lines  = self._get_lines(roi_image)
        if len(lines) != 0:
            self.draw_lines(img, lines)
        return lines
        
def empty_dir(dir_path):
    for f in os.listdir(dir_path):
        file_path = os.path.join(dir_path, f)
        if os.path.isfile(file_path):
            os.remove(file_path)

def main():
    input_dir_path = "../inputs"
    output_dir_path = "../outputs"
    for dir in os.listdir(output_dir_path):
        if os.path.isdir(os.path.join(output_dir_path, dir)):
            empty_dir(os.path.join(output_dir_path, dir))
    my_detector = HoughDetector(output_dir_path)
    for img_path in os.listdir(input_dir_path):
        if ".png" in img_path:
            image = cv2.imread(os.path.join(input_dir_path, img_path))
            image = my_detector.preprocess(image)
            my_detector.process_image(image, img_path)
    
    # input_image_path = "../inputs/13.png"
    # image = cv2.imread(input_image_path)
    # image = my_detector.preprocess(image)
    # lines = my_detector.process_image(image, "13.png")
    
if __name__ == "__main__":
    main()