white=uint8(ones(32,32,3)*240);
black=uint8(ones(32,32,3)*15);
mat=repmat([black white;white black],4,4);
imshow(mat)
imwrite(mat,'chess_panel.tif','tif')
