%%UV Irradiance
for x=0:5:100 %%distance from the lamp in cm
    l=39.8; %%length of the lamp segment in cm
    r=0.8; %% radius of the lamp in cm
    H=x/r;
    L=l/r;
    X=(1+H)^2+L^2;
    Y=(1-H)^2+L^2;
    M= sqrt((H-1)/(H+1));
    Q=(atan(L/(sqrt(H^2-1))))/L;
    W=atan(M);
    E=((X-(2*H))*atan(M*sqrt(X/Y)))/(sqrt(X*Y));
    F=(L/(pi*H))*(Q-W+E);
    Euv=6; %%UV power output of the lamp
    I=(Euv*F)/(2*pi*r*l);
    plot(x,I,'.');
    ylabel('Irradiance')
    xlabel('Distance')
    hold on
end

  %% Reflective Irradiance for Vertical Distance-1 to the floor
  Length = 250;
  Breadth=250;
  Height=250;
  x=25
  X=Height/x;
  Y=Length/x;
  Q=(X*atan(Y/(sqrt(1+X^2))))/(sqrt(1+X^2))
  W=(Y*atan(X/(sqrt(1+Y^2))))/(sqrt(1+Y^2))
  Fh1=(Q+W)/(2*pi)
  Euv=6; %%UV power output of the lamp
  Ih1=(Euv*Fh1)/(2*pi*r*l)
  %% Reflective Irradiance for Vertical Distance-2 to the cealing
  Length = 250;
  Breadth=250;
  Height=250;
  x=25
  X=Height/x;
  Y=Length/x;
  Q=(X*atan(Y/(sqrt(1+X^2))))/(sqrt(1+X^2))
  W=(Y*atan(X/(sqrt(1+Y^2))))/(sqrt(1+Y^2))
  Fh2=(Q+W)/(2*pi)
  Euv=6; %%UV power output of the lamp
  Ih2=(Euv*Fh2)/(2*pi*r*l)
  %% Reflective Irradiance for Horizontal Distance-1 to the left end of the wall
  Length = 250;
  Breadth=250;
  Height=250;
  Y=25
  P=Height/Breadth;
  Q=Y/Breadth;
  A=atan(1/Q)
  B=(Q*atan(1/(sqrt(P^2+Q^2))))/(sqrt(P^2+Q^2))
  Fv1=(A-B)/(2*pi)
  Euv=6; %%UV power output of the lamp
  Iv1=(Euv*Fv1)/(2*pi*r*l)
  %% Reflective Irradiance for Horizontal Distance-1 to the left end of the wall
  Length = 250;
  Breadth=250;
  Height=250;
  Y=25
  P=Height/Breadth;
  Q=Y/Breadth;
  A=atan(1/Q)
  B=(Q*atan(1/(sqrt(P^2+Q^2))))/(sqrt(P^2+Q^2))
  Fv2=(A-B)/(2*pi)
  Euv=6; %%UV power output of the lamp
  Iv2=(Euv*Fv2)/(2*pi*r*l)
  
  
  
  
  
  
  
  
  



