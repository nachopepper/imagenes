%%
imagen=rgb2gray(imread('irm.png')); %pasamos directamente la imagen a grises
%%

figure,
subplot(1,2,1),imagesc(imagen),axis image off,colormap(gray)
subplot(1,2,2),bar(imhist(imagen)),xlim([0 250]),grid
%primero es facil notar que el histograma esta disperso,con mayor
%concentracion de intensidad en los medios