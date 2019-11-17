#include "myMath.h"




double Pow (double x, int y){
    if (y == 0){
        return 1;
    }
        double temp = x;
	
        for (int i = 1; i < y; i++)
        {
            temp = temp*x;
        }

        if (y < 0){
	return div(1,temp);
}
    
    return temp;
    
}

double Exp (int x){
    
   
        double e = 2.71828;
        return Pow(e,x);
        
    
}
