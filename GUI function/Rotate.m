function [img_out]=Rotate(img_in,method,angle)
img_out=imrotate(img_in,angle,method,"crop");
end