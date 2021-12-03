import cv2
from utils.hough_transform import get_lines, get_lines_prob


img = cv2.imread("images/image.jpeg")
lines = get_lines(img)
print(lines)

# for (x1,y1,x2,y2) in lines:
#     print(x1)
#     cv2.line(img,(x1,y1),(x2,y2),(0,255,0),2)
    
# for [line] in lines:
#     cv2.line(img,(line[0], line[1]), (line[2], line[3]),(0,255,0),2)
    
# cv2.imwrite("out.jpeg", img)    