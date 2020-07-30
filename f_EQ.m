function tp_=f_EQ(x,xp,y,yp,z,zp,v);
for i=1:length(x);
        tp_(i,1)=(xp-x(i))/((((x(i)-xp)^2+(y(i)-yp)^2+(z(i)-zp)^2))^0.5*v);
        tp_(i,2)=(yp-y(i))/((((x(i)-xp)^2+(y(i)-yp)^2+(z(i)-zp)^2))^0.5*v);
        tp_(i,3)=(zp-z(i))/((((x(i)-xp)^2+(y(i)-yp)^2+(z(i)-zp)^2))^0.5*v);
end


   