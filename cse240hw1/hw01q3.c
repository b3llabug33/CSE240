#include <stdio.h>

int main() {
char ch = '+';
int a = 10, b = 20;
double f;
printf("ch = %c\n", ch);
switch (ch) {
case '+': f = a + b; printf("f = %f\n", f); break;
case '-': f = a - b; printf("f = %f\n", f); break;
case '*': f = a * b; printf("f = %f\n", f); break;
case '/': f = (double)a / b; printf("f = %f\n", f); break;
default: printf("invalid operator\n"); break;
}
ch = '-';
printf("ch = %c\n", ch);
switch (ch) {
case '+': f = a + b; printf("f = %f\n", f); break;
case '-': f = a - b; printf("f = %f\n", f); break;
case '*': f = a * b; printf("f = %f\n", f); break;
case '/': f = (double)a / b; printf("f = %f\n", f); break;
default: printf("invalid operator\n"); break;
}
ch = '*';
printf("ch = %c\n", ch);
switch (ch) {
case '+': f = a + b; printf("f = %f\n", f); break;
case '-': f = a - b; printf("f = %f\n", f); break;
case '*': f = a * b; printf("f = %f\n", f); break;
case '/': f = (double)a / b; printf("f = %f\n", f); break;
default: printf("invalid operator\n"); break;
}
ch = '/';
printf("ch = %c\n", ch);
switch (ch) {
case '+': f = a + b; printf("f = %f\n", f); break;
case '-': f = a - b; printf("f = %f\n", f); break;
case '*': f = a * b; printf("f = %f\n", f); break;
case '/': f = (double)a / b; printf("f = %f\n", f); break;
default: printf("invalid operator\n"); break;
}
ch = '%';
printf("ch = %c\n", ch);
switch (ch) {
case '+': f = a + b; printf("f = %f\n", f); break;
case '-': f = a - b; printf("f = %f\n", f); break;
case '*': f = a * b; printf("f = %f\n", f); break;
case '/': f = (double)a / b; printf("f = %f\n", f); break;
default: printf("invalid operator\n"); break;
}
return 0;
}



