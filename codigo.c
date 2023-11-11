#include <stdio.h>
#include <math.h>
int main() {
int result;
int a;
int b;
int c;
c = 2.0  ;
b = 1.0  ;
a = 5.0  ;
for (int a = a; a >= b; a -= c  ) {
printf("%f\n", a  );
}
}