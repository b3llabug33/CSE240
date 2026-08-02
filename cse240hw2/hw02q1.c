#include <stdio.h>

#define subm(a,b) ((a) - (b))
#define cubem(x)  ((x) * (x) * (x))
#define minm(a,b) ((a) < (b) ? (a) : (b))
#define oddm(x)   ((x) % 2 != 0)

int subf(int a, int b) {
    return a - b;
}

int cubef(int a) {
    return a * a * a;
}

int minf(int a, int b) {
    if (a <= b) {
        return a;
    } else {
        return b;
    }
}

int oddf(int a) {
    if (a % 2 == 1) {
        return 1;
    } else {
        return 0;
    }
}

int main() {
    int a, b;

    a = 3; b = 6;
    printf("subf(%d, %d) = %d\n", a, b, subf(a, b));
    printf("subm(%d, %d) = %d\n", a, b, subm(a, b));

    printf("subf(a++, b--) = %d\n", subf(a++, b--));

    a = 3; b = 6;
    printf("subm(a++, b--) = %d\n", subm(a++, b--));

    a = 3; b = 6;
    printf("cubef(%d) = %d\n", a, cubef(a));
    printf("cubem(%d) = %d\n", a, cubem(a));

    printf("cubef(--a) = %d\n", cubef(--a));

    a = 3; b = 6;
    printf("cubem(--a) = %d\n", cubem(--a));

    a = 3; b = 6;
    printf("minf(%d, %d) = %d\n", a, b, minf(a, b));
    printf("minm(%d, %d) = %d\n", a, b, minm(a, b));

    printf("minf(--a, --b) = %d\n", minf(--a, --b));

    a = 3; b = 6;
    printf("minm(--a, --b) = %d\n", minm(--a, --b));

    a = 2; b = 6;
    printf("oddf(%d) = %d\n", a, oddf(a));
    printf("oddm(%d) = %d\n", a, oddm(a));

    printf("oddf(a++) = %d\n", oddf(a++));

    a = 2; b = 6;
    printf("oddm(a++) = %d\n", oddm(a++));

    return 0;
}
