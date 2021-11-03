clc;close all;clear all;
kp =1;
kd = 5.06e-3;
sys1 = tf([6561],[1 40.5 0]);
sys2 = tf([kd kp ],[1]);
sys = sys1*sys2;
t= 0:0.001:5;
sys =feedback(sys,1);
step(sys,t)
figure
ramp = t;
lsim(sys,ramp,t);
parabolic = t.^2;
figure
lsim(sys,parabolic,t);