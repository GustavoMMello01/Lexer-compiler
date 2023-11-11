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
while (a > b  ) {
if (b > c  ) {
printf("%f\n", b  );
}
else if (c > b  ) {
printf("%f\n", c  );
}
}
}