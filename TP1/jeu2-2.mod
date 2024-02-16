/*********************************************
 * OPL 22.1.1.0 Model
 * Author: user
 * Creation Date: 19 Dec 2023 at 17:50:31
 *********************************************/
 dvar float  p;
 dvar float+ y1;
 dvar float+ y2;
 dvar float+ y3;
 dvar float+ y4;
 dvar float+ y5;
 dvar float+ y6;
 
 minimize p;
 
 subject to
 {
	    -y1 + y2 + y3 - y4 + y5 + y6 <= p;
		 y1 + y2 - y3 - y4 + y5 - y6 <= p;
		 y1 - y2 + y3 - y4 + y5 + y6 <= p;
		 y1 - y2 - y3 + y4 + y5 + y6 <= p;
		-y1 - y2 + y3 + y4 + y5 + y6 <= p;
		 y1 + y2 + y3 + y4 - y5 - y6 <= p;
		 y1 + y2 + y3 - y4 - y5 + y6 <= p;
		 y1 + y2 + y3 + y4 + y5 + y6 == 1;
 }