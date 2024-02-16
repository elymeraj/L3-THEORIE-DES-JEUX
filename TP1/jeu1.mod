/*********************************************
 * OPL 22.1.1.0 Model
 * Author: user
 * Creation Date: 13 Dec 2023 at 14:53:53
 *********************************************/

 dvar float  g;
 dvar float+ x1;
 dvar float+ x2;
 dvar float+ x3;
 dvar float+ x4;
 dvar float+ x5;
 dvar float+ x6;
 
 maximize g;
 
 subject to
 {
		-120*x4 + 120*x6 >= g;
		-120*x3 + 120*x5 >= g;
		 120*x2 - 120*x5 >= g;
		 120*x1 - 120*x6 >= g;
		-120*x2 + 120*x3 >= g;
		-120*x1 + 120*x4 >= g;
	    x1 + x2 +x3 + x4 + x5 + x6 == 1;
 }
 
 

  
 
 
 
 
 
 