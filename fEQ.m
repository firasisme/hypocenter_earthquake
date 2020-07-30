function tp=fEQ(x,xp,y,yp,z,zp,v,t);
for i=1:length(x);
    tp(i,1)=((x(i)-xp)^2+(y(i)-yp)^2+(z(i)-zp)^2)^0.5/v-t(i);
end