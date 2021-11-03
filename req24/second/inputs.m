clc;close all;clear all
kc =1.16;
sys1 = tf([6561],[1,40.5,0]);
sys2 = tf([kc kc*50],[1 100]);
sys = sys1*sys2;
sys = feedback(sys,1);
t = 0:1e-3:1;
step(sys,t);
figure
lsim(sys,t,t);
figure
lsim(sys,t.^2,t);