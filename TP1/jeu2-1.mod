/*********************************************
 * OPL 22.1.1.0 Model
 * Author: user
 * Creation Date: 19 Dec 2023 at 17:36:22
 *********************************************/
 dvar float  g;
 dvar float+ x1;
 dvar float+ x2;
 dvar float+ x3;
 dvar float+ x4;
 dvar float+ x5;
 dvar float+ x6;
 dvar float+ x7;
 
 maximize g;
 
 subject to
 {
	    -x1 + x2 + x3 + x4 - x5 + x6 + x7 >= g;
		 x1 + x2 - x3 - x4 - x5 + x6 + x7 >= g;
		 x1 - x2 + x3 - x4 + x5 + x6 + x7 >= g;
		-x1 + x2 - x3 + x4 + x5 + x6 - x7 >= g;
		 x1 + x2 + x3 + x4 + x5 - x6 - x7 >= g;
		 x1 - x2 + x3 + x4 + x5 - x6 + x7 >= g;
		 x1 + x2 + x3 + x4 + x5 + x6 + x7 == 1;
 }
 