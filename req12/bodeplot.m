clc;close all ;clear all
sys = tf([6561],[1,40.5,0]);
bode(sys)