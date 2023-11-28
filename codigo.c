#include <stdio.h>
#include <math.h>
void teste(float a) {
float d;
float c;
c = 2.0  ;
d = 1.0  ;
a = c  + d  ;
printf("%f\n", a);
for (int a = a; a >= c; a -= d  ) {
printf("%f\n", a);
}
}
int main() {
float a;
float b;
a = 2.0  ;
b = 1.0  ;
printf("%s %f\n", "OLas", a);
teste(a);
}