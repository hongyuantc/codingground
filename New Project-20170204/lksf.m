function y=lksf(sf,z,h,a,p1,p2,c,ksf,kdf,omegasf,betasf,betadf)
k1=1i*omegasf*ksf*a.*p1*exp(-1i*betasf*z)+1i*omegasf*kdf*p2.*c*exp(-1i*betadf*z);
k2=1i*omegasf*ksf*a.*p1*exp(-1i*betasf*(z+h/2))+1i*omegasf*kdf*p2.*c*exp(-1i*betadf*(z+h/2));
k3=1i*omegasf*ksf*a.*p1*exp(-1i*betasf*(z+h/2))+1i*omegasf*kdf*p2.*c*exp(-1i*betadf*(z+h/2));
k4=1i*omegasf*ksf*a.*p1*exp(-1i*betasf*(z+h))+1i*omegasf*kdf*p2.*c*exp(-1i*betadf*(z+h));
y=sf+h*(k1+2*k2+2*k3+k4)/6;