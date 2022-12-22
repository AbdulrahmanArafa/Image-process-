% histogram stretching

function im=stretching(img)
img=double(img);
i_min=min(img(:));
i_max=max(img(:));
j=255*(img-i_min)/(i_max-i_min);
j=uint8(j);
im=j;
end