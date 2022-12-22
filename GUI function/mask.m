function [im]=mask(sharp,s)
        img=imread(s);
        img2=img;
        
        if size(img,3)==3
         img2=rgb2gray(img);
        end

    img2=im2double(img2);
    mask=@(x) median(x(:));
    im=nlfilter(img2,[sharp,sharp],mask);
end