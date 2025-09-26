#include <stdio.h>
#define subm(a,b) ((a) - (b))
#define cubem(x) ((x) * (x) * (x)))
#define minm(a,b)((a) < (b) ? (a) : (b))
#define oddm(x)((x) % 2 != 0)

int main() {

a = 3, b = 6;
subf(a, b);
printf("subf(%d, %d) = %d\n", a, b, subf(a, b));)
subm(a, b);
printf("subm(%d, %d) = %d\n", a, b, subm(a, b));)
subf(a++, b--);
printf("subf(%d++, %d--) = %d\n", a, b, subf(a++, b--));)
a = 3; b = 6; // reset a,b values
subm(a++, b--);
printf("subm(%d++, %d--) = %d\n", a, b, subm(a++, b--));)
a = 3; b = 6;
cubef(a);
printf("cubef(%d) = %d\n", a, cubef(a));)
cubem(a);
printf("cubem(%d) = %d\n", a, cubem(a));)
cubef(--a);
printf("cubef(--%d) = %d\n", a, cubef(--a));)
a = 3; b = 6;
cubem(--a);
printf("cubem(--%d) = %d\n", a, cubem(--a));)
a = 3; b = 6;
minf(a, b);
printf("minf(%d, %d) = %d\n", a, b, minf(a, b));)
minm(a, b);
printf("minm(%d, %d) = %d\n", a, b, minm(a, b));)
minf(--a, --b);
printf("minf(--%d, --%d) = %d\n", a, b, minf(--a, --b));)
a = 3; b = 6;
minm(--a, --b);
printf("minm(--%d, --%d) = %d\n", a, b, minm(--a, --b));)
a = 2; b = 6;
oddf(a);
printf("oddf(%d) = %d\n", a, oddf(a));)
oddm(a);
printf("oddm(%d) = %d\n", a, oddm(a));))
oddf(a++);
printf("oddf(%d++) = %d\n", a, oddf(a++));)
a = 2; b = 6;
oddm(a++);
printf("oddm(%d++) = %d\n", a, oddm(a++));)

int subm(int a, int b) {
return a - b;
}

int cubem(int a) {
return a * a * a;
}

int minm(int a, int b) {
if (a <= b) {
return a;
}
else {
return b;
}
}

int oddm(int a) {
if (a % 2 == 1) {
return 1;
}
else {
return 0;
}

}