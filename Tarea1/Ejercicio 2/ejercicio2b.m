%%
imagen=rgb2gray(imread('irm.png'));

%%

inten=1.1*imagen-80; %le aumente el contraste dado F(g)=a*g+b
                     %dado que asi el histograma queda mejor para
                     %una futura segmentacion
                     
inten=uint8(inten);

%%

figure,
subplot(1,2,1),imagesc(inten),axis image,axis off ,colormap(gray)
subplot(1,2,2),bar(imhist(inten)),xlim([0 250]),grid