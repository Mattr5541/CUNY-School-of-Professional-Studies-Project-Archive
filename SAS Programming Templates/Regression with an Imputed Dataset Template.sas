***********Regression Template for a longitudinal imputed data*************;

ods graphics off;
ods select all;
proc reg data = dataimpute ;by _imputation_;

model var1t2= var1t1 var2t1;

ods output parameterestimates = reg_estimates_pe; run;

proc means;class variable;  run;

proc mianalyze data = reg_estimates_pe; where variable = "var1t1";

modeleffects estimate ; stderr stderr; run;

proc mianalyze data = reg_estimates_pe; where variable = "var2t1";

modeleffects estimate ; stderr stderr; run;