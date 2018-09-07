%%
imagen=rgb2gray(imread('irm.png'));

%%
inten=1.25*imagen-85; 
inten=uint8(inten);

%%
[I,J]=size(inten);

img_seg=zeros(I,J);


for i=1:I
for j=1:J  %dado el histograma que me dio en la parte B y analizando tambien
           %de forma manual, la mejor segmentacion del humbral posible fue de 55 y 135

if inten(i,j)<=55
img_seg(i,j)=1;
elseif inten(i,j)>55 &&  inten(i,j)<=135
       img_seg(i,j)=2;
         end
     end
end

img_seg=uint8(img_seg);
mapa=[1 0 0;1 1 0;0 0 1];%Rojo Amarillo Azul

%%
figure,
imagesc(img_seg),axis image,axis off ,colormap(mapa)

