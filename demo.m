%% Using MATLAB as a Calculator
a = 2; b = 4;c = -6;
dat = b^2 - 4*a*c

e = sqrt(dat)/10

%% Help for MATLAB
help
help log2

%% Matrix
A = [1 2 3; 4 5 6; 7 8 90]

B=A'

C=A+B


det(A)

inv(A)

%% Plotting plot(xdata,ydata)

x = 0:pi/100:5*pi;
y = 10*sin(2*pi*x);
plot(x,y);


%% liner system example
A=[1 2 3; 2 3 4]
b=[1; 10]

A\b

%% DC Circuit Analysis - voltage

A = [ 3 -2 0 0;
 -1 5 1 -5
 0 -2 3 -1;
 0 -2 -1 3]
B = [16 0 12 -8]';
V = A\B % V=inv(A)*B

%% DC circuit Analysis - Current

A = [9 -4 0 -2; -4 15 -4 -6;
0 -4 10 -2; -2 -6 -2 20]

B = [6 -12 12 0]'

I=A\B


%% AC circuit Analysis 
%% basics
A=3-4j
abs(A)
angle(A) % in rad
imag(A)
real(A)
%% example
A = [-j 1; -2 (2 + j)]
B = [(3.468 - 2j) 16j].' %note the dot-transpose
V=A\B
abs(V)
angle(V(1))*180/pi %converts angle from radians to degrees
angle(V(2))*180/pi

%% Three-phase system

Z = [(15 + 10j) -1 (-12 - 10j);
 -1 (13 - 8j) (-10 + 8j);
 (-12 - 10j) (-10 + 8j) (37 + 8j)]

c1=120*exp(j*pi*(-120)/180)
c2=120*exp(j*pi*(120)/180)
a1=120 - c1; a2=c1 - c2
V = [a1; a2; 0]

I=Z\V


abs(I)
angle(I)*180/pi

%% Frequency Response
range = linspace(1,1000,50);
range = logspace(-2,4,100);


%% example 1 for frequency Response

H=tf([1 0 0 0],[1 14.8 38.1 2554])
w=logspace(-1,3);
bode(H,w)
title('Bode plot for a high-passs filter')

%% %% example 2 for frequency Response

H=tf([10 10],[1 6 100])

bode(H)
title('Bode plot for a band-passs filter')


%%  example 3 for frequency Response from Bode Plot session

H=tf([200 0],[1 12 20])
bode(H)
title('Bode plot for a band-passs filter')


%%  serires RLC circuit
syms t
R=0.5;L=0.001;C=100*1e-6/6
y0=115*exp(-200*t)-110*exp(-300*t); y1=diff(y0);
y2=diff(y0,2);