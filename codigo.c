#include <stdio.h>
#include <math.h>
void teste(float a) {
printf("%f\n", a);
}
int main() {
float a;
float b;
a = 2.0  ;
b = 1.0  ;
if (a > b  ) {
printf("%f\n", a);
}
else if (b == a  ) {
printf("%f\n", b);
}
else {
printf("%f\n", a);
}
teste(a);
}