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
    Euv=60; %%UV power output of the lamp
    I=(Euv*F)/(2*pi*r*l);
    plot(x,I,'.');
    ylabel('Irradiance')
    xlabel('Distance')
    hold on
    end



