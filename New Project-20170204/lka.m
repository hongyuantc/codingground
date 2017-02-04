function  y=lka(a,p1,z,h,sf,omegaa,ksf,betasf)
k1=1i*omegaa*ksf*conj(p1).*sf*exp(1i*betasf*z);
k2=1i*omegaa*ksf*conj(p1).*sf*exp(1i*betasf*(z+h/2));
k3=1i*omegaa*ksf*conj(p1).*sf*exp(1i*betasf*(z+h/2));
k4=1i*omegaa*ksf*conj(p1).*sf*exp(1i*betasf*(z+h));
y=a+h*(k1+2*k2+2*k3+k4)/6;