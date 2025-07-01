clc;
s=0;
a=3;
l=1;
for i=1:1e6
    x_i = a*rand();
    theta_i=pi*rand();
    x_0_i=l*sin(theta_i);
    if x_i<x_0_i
        s=s+1;
    end
end
Pi=(2*l)/(a*(s/1e6))
