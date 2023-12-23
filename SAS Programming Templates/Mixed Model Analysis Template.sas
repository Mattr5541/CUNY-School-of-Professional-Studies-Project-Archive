***Mixed Model Template for a Longitudinal Imputed Data, with administration time as the sole predictor;
proc mixed data = dataimpute noprofile dfbw info cl covtest; by _imputation_;

class id;

model var3t5=admin_time  /solution;

random int  /type = un sub = id;


ods output SolutionF = mixed_estimates_pe;  run;

proc means; class effect; run;

proc mianalyze data = mixed_estimates_pe; where effect = "admin_time";
modeleffects estimate ; stderr stderr; run;


***Mixed Model Template for a Longitudinal Imputed Data, with administration time as the sole predictor;
proc mixed data = e.imputepedatefix noprofile dfbw info cl covtest; by _imputation_;

class id admin_time;

model var3t5=admin_time var1t3 var1t4 var2t3 var2t4  /solution; 

random int  /type = un sub = id;


ods output SolutionF = mixed_estimates_pe;  run;

proc means; class effect; run;

proc mianalyze data = mixed_estimates_pe;
by effect;
modeleffects estimate ; stderr stderr; run;

