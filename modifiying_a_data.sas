data first;

input studentID fname $ lname $ Salary; 
/*the $ sign for the character is required to have an space*/

dataline; /*the record of dataset coming after this word*/
1 john smith 50000
2 Mary Lee 60000
; 
run; /*the line above is required*/

data two;
set first;
bonus = salary*0.1;
run;
proc print data=two; /*tt means the library name and first is the dataset*/
run; 


proc print data=two; /*printing the summation of the salary*/
sum salary bouns;
run; 


/*where condition: */
data europeancar;
  set sashelp.cars; /*library name sashelp and the data set is cars*/
  where origin = "Europe"; /*it is case snsitive for chars*/
run;


/************salary beyond 50K*/
data three;
set tt.first;
where salary > 50000;
run;

proc print data=three;
run;

/*from the other table which is temp not permanent*/
data four;
set work.Two;
where (salary+bonus) > 50000;
run;

proc print data=four;
run;
