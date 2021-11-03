clc;close all;clear all
kp =1;
kd = 8e-3;
sys1 = tf([6561],[1,40.5,0]);
sys2 = tf([kd kp],[1]);
sys = tf(sys1*sys2)
rlocus(sys)