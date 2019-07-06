Retrieving the code behind datastep and sql views created in the same environment                                               
                                                                                                                                
StackOverflow data_null_                                                                                                        
https://stackoverflow.com/users/2196220/data-null                                                                               
                                                                                                                                
                                                                                                                                
  Two Solutions                                                                                                                 
                                                                                                                                
      a. SQL views                                                                                                              
         https://stackoverflow.com/users/3623566/lee                                                                            
                                                                                                                                
      b, Datastep views                                                                                                         
         https://stackoverflow.com/users/2196220/data-null                                                                      
                                                                                                                                
                                                                                                                                
github                                                                                                                          
https://tinyurl.com/y6ykkw46                                                                                                    
https://github.com/rogerjdeangelis/utl-retrieving-the-code-behind-datastep-and-sql-views-created-in-the-same-environment        
                                                                                                                                
StackOverflow                                                                                                                   
https://tinyurl.com/y6pvy5f6                                                                                                    
https://stackoverflow.com/questions/56900007/is-it-possible-to-get-source-code-from-sas-view-table                              
                                                                                                                                
                                                                                                                                
*                     _                                                                                                         
  __ _      ___  __ _| |                                                                                                        
 / _` |    / __|/ _` | |                                                                                                        
| (_| |_   \__ \ (_| | |                                                                                                        
 \__,_(_)  |___/\__, |_|                                                                                                        
                   |_|                                                                                                          
;                                                                                                                               
                                                                                                                                
proc sql;                                                                                                                       
  create                                                                                                                        
     view sqlVue as                                                                                                             
  select                                                                                                                        
     *                                                                                                                          
  from                                                                                                                          
     sashelp.class                                                                                                              
;quit;                                                                                                                          
                                                                                                                                
                                                                                                                                
proc sql;                                                                                                                       
  describe view sqlVue;                                                                                                         
quit;                                                                                                                           
                                                                                                                                
                                                                                                                                
OTE: SQL view WORK.SQLVUE is defined as:                                                                                        
                                                                                                                                
       select *                                                                                                                 
         from SASHELP.CLASS;                                                                                                    
                                                                                                                                
*_             _       _            _                                                                                           
| |__       __| | __ _| |_ __ _ ___| |_ ___ _ __                                                                                
| '_ \     / _` |/ _` | __/ _` / __| __/ _ \ '_ \                                                                               
| |_) |   | (_| | (_| | || (_| \__ \ ||  __/ |_) |                                                                              
|_.__(_)   \__,_|\__,_|\__\__,_|___/\__\___| .__/                                                                               
                                           |_|                                                                                  
;                                                                                                                               
                                                                                                                                
data tblVue/view=tblVue;                                                                                                        
                                                                                                                                
    set sashelp.class;                                                                                                          
                                                                                                                                
    if sex="M" then sex_decode="Male";                                                                                          
    else sex_decode="Feale";                                                                                                    
                                                                                                                                
run;quit;                                                                                                                       
                                                                                                                                
data view=tblVue;                                                                                                               
   describe;                                                                                                                    
run;                                                                                                                            
                                                                                                                                
                                                                                                                                
NOTE: DATA step view WORK.TBLVUE is defined as:                                                                                 
                                                                                                                                
data tblVue/view=tblVue;                                                                                                        
   set sashelp.class;                                                                                                           
   if sex="M" then                                                                                                              
      sex_decode="Male";                                                                                                        
   else                                                                                                                         
      sex_decode="Feale";                                                                                                       
run;                                                                                                                            
                                                                                                                                
                                                                                                                                
