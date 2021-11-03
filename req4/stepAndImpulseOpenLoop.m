clc ;close all;clear all
sys = tf([6561],[1 40.5 0])
t = 0:0.01:1;
step(sys,t)
figure
impulse(sys,t)