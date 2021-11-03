clc ;close all;clear all
syms s t
Kc = 1.24;G1 = (Kc*(s+62)/(s+106));G2 = 6561/(s^2+40.5*s);
G = G1*G2;
r1 = 1+t-t; % unit step
r2 = t;  % ramp 
r3 = t^2; % parobala
R1 = laplace(r1);
R2 = laplace(r2);
R3 = laplace(r3);
ess1 = limit((s*R1)/(1+G),0) % error due to unit step
ess2 = limit((s*R2)/(1+G),0) % error due to ramp
ess3 = limit((s*R3)/(1+G),0) % error due to parabola