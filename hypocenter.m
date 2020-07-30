clc
close all
clear all

Data=load('casegempa.txt'); 

X=Data(:,1); 
Y=Data(:,2); 
Z=Data(:,3); 
t=Data(:,4); 

 
figure;plot3(X,Y,Z,'v','MarkerSize', 10); 


xlabel('UTM Easting'); 
ylabel('UTM Northing'); 
zlabel('Depth'); 
grid on
title('Earthquake'); 

xp=704103.18 ; 
yp=9313254; 
zp=-2000; 
v=5000; 
itermaks=1000; 

for i=1:itermaks; 
     
    y=fEQ(X,xp,Y,yp,Z,zp,v,t); 
    j=f_EQ(X,xp,Y,yp,Z,zp,v); 
     
    m=inv(j'*j)*j'*y; 
     
    xb=xp-m(1,:); 
    xp=xb; 
    yb=yp-m(2,:); 
    yp=yb; 
    zb=zp-m(3,:); 
    zp=zb; 
end 

xp 
yp 
zp 


hold on;plot3(xp,yp,zp,'r.','MarkerSize', 30);
legend('station','hypocenter')

