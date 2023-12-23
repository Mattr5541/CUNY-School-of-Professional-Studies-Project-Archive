***FCS Imputation Template
***Programming for the imputation procedure. The variables listed in the "keep" section represent auxiliary variables;
proc MI data = dataset (keep = aux1 aux2 aux3)

seed = 890137 nimpute= 5  out = dataimpute;

fcs nbiter = 100 regpmm; 

 
***These variables represent the items selected for imputation;
var var1 var2 var3;
run;