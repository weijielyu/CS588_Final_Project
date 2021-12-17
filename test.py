import cv2
import numpy as np
from utils.hough_transform import get_lines, get_lines_prob


img = cv2.imread("images/oneline.jpeg")
lines = get_lines_prob(img)
print(lines.shape)

for x1,y1,x2,y2 in lines[0]:
    cv2.line(img,(x1,y1),(x2,y2),(0,0, 255),2)

# for rho,theta in lines[0]:
#     a = np.cos(theta)
#     b = np.sin(theta)
#     x0 = a*rho
#     y0 = b*rho
#     x1 = int(x0 + 1000*(-b))
#     y1 = int(y0 + 1000*(a))
#     x2 = int(x0 - 1000*(-b))
#     y2 = int(y0 - 1000*(a))

#     cv2.line(img,(x1,y1),(x2,y2),(0,0,255),2)
    
    
cv2.imwrite("out.jpeg", img)    