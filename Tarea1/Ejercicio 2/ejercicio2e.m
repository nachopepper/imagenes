%%
imagen=rgb2gray(imread('irm.png'));  %cargamos ambas imagenes en escala de grises
mascara=rgb2gray(imread('mascara.png'));

%%
mascara=mascara/255; %lo unico que tuve que hacer para normalizar
                     %fue dividir la imagen en grises por 255
                    
inten=1.25*imagen-80;

multi=uint8(inten.*mascara); %multiplicacion entre mascara e imagen


%%

figure,
imagesc(multi),axis image off,colormap(gray)
