function res = grs2rgb(img, map)
if size(img,3)==3
    img=rgb2gray(img);
end
[l,w] = size(map);
if ischar(img)
a = imread(img);
end;
	a = img;

    
a = double(a);
a(a==0) = 1; 
ci = ceil(l*a/max(a(:))); 
% Colors in the new image
[il,iw] = size(a);
r = zeros(il,iw); 
g = zeros(il,iw);
b = zeros(il,iw);
r(:) = map(ci,1);
g(:) = map(ci,2);
b(:) = map(ci,3);
% New image
res = zeros(il,iw,3);
res(:,:,1) = r; 
res(:,:,2) = g; 
res(:,:,3) = b;
