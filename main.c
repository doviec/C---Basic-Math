
#include <stdio.h>
#include "myMath.h"

double f1(double x){
    return sub(add((Exp(x)),(Pow(x,3))),2);
}
double f2(double x){
    return add((mul(x,3)),(mul(Pow(x,2),2)));
}
double f3(double x){
    return sub(div((mul(Pow(x,3),4)),5),((mul(x,2))));
}


int main(){



double x;
printf("please insert a real number \n");
scanf(" %lf",&x);
double x1=f1(x);
double x2=f2(x);
double x3=f3(x);

printf("the value of f(x) = e^x +x^3 -2 at the point is:  %0.4f \n",x1);
printf("the value of f(x) = 3X + 2X^2 at the point is:  %0.4f \n",x2);
printf("the value of f(x) = (4X^3)/5-2X at the point is: %0.4f \n",x3);
return 0;
}




