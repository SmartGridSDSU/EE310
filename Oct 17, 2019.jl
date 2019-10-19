
#Pkg.add("Plots")
#Pkg.add("SampledSignals")
using Plots,SampledSignals,LinearAlgebra

Pkg.activate(".")
Pkg.instantiate()
Pkg.status()
## Using MATLAB as a Calculator
a = 2; b = 4;c = -6;
dat = b^2 - 4*a*c

e = sqrt(dat)/10

## Matrix
A = [1 2 3; 4 5 6; 7 8 90]

B=A'

C=A+B

det(A)

inv(A)

f(x)=cos(x)
plot(f,-pi/2,pi/2);



## liner system example
A=[1 2 3; 2 3 4]
b=[1; 2]

A\b

## DC Circuit Analysis - voltage

A = [ 3 -2 0 0;
 -1 5 1 -5
 0 -2 3 -1;
 0 -2 -1 3]
B = [16 0 12 -8]';
V = A\B

## DC circuit Analysis - Current

A = [9 -4 0 -2; -4 15 -4 -6;0 -4 10 -2; -2 -6 -2 20]

B = [6 -12 12 0]'

I=A\B


## AC circuit Analysis
## basics
A=3-4im
abs(A)
angle(A) # in rad
imag(A)
real(A)
## example
A = [-im 1; -2 (2 + im)]
B = [(3.468 - 2im) 16im]' #note the dot-transpose
V=A\B
abs(V[1])
angle(V[1])*180/pi #converts angle from radians to degrees
angle(V[2])*180/pi


## Three-phase system

Z = [(15 + 10im) -1 (-12 - 10im);
 -1 (13 - 8im) (-10 + 8im);
 (-12 - 10im) (-10 + 8im) (37 + 8im)];

c1=120*exp(im*pi*(-120)/180);
c2=120*exp(im*pi*(120)/180);
a1=120 - c1; a2=c1 - c2;
V = [a1; a2; 0]

I=Z\V

for i in 1:length(I)
    println(abs(I[i]), " ", angle(I[i])*180/pi)
end
