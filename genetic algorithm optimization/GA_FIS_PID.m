no_var=3;
lb=[0 0 0];
ub=[1000 1000 1000];
GA_opt= gaoptimset('Display','off','Generations',25,
'Populationsize',10,'PlotFcns',@gaplotbestf);
obj_fun=@(k) tunning(k);
[k,best]= ga((obj_fun),no_var,[],[],[],[],lb,ub,[],GA_opt);