clear all, close all, clc

dt = 0.001;
t = tf('s');
G = (50*t+8.5)/(100*t^2+8.2*t+1.822);

options = optimoptions(@ga,'PopulationSize',25,'MaxGenerations',10);
[x,fval] = ga(@(K)pidtest(G,dt,K),3,-eye(3),zeros(3,1),[],[],[],[],[],options);