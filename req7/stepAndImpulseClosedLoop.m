clc ;close all;clear all
Kd = 8e-3;
Kp = 1;
sys1 = tf([6561],[1 40.5 0]);
sys2 = tf([Kd Kp],[1]);
sys = sys1*sys2;
t = 0:0.001:1;
sys = feedback(sys,1);
step(sys,t)
figure
lsim(sys,t,t);
figure
lsim(sys,t.^2,t);