clc;close all;clear all
Kc = 1.17;
sys1 = tf([Kc Kc*50],[1 100]);
sys2 = tf ([6561],[1 40.5 0]);
sys = sys1*sys2;
rlocus(sys);  