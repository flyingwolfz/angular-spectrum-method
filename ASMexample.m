clc;
clear;
p=zeros(1024,1024);
p(256:768,256:768)=1;

pitch=8*10^(-3);
z=pitch*1024*200;
pitch=8*10^(-3);
lambda=638*10^(-6);

final=ASM(1,1,1,0,p,1,z,pitch,lambda);
finallimit=ASM(1,1,1,1,p,1,z,pitch,lambda);

subplot(1,3,1)
imshow(p);

final=abs(final);
final=final./max(max(final)); 
subplot(1,3,2)
imshow(final);

finallimit=abs(finallimit);
finallimit=finallimit./max(max(finallimit)); 
subplot(1,3,3)
imshow(finallimit);