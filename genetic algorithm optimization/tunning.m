function cost = tunning(k)
assignin('base','k',k);
sim("GA_tunning.slx");
cost = ITAE(length(ITAE));
end