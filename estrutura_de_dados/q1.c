#include <stdio.h>

void unknown(int v[], int s, int e);

int main(int argc, char){
    int s = 0, e = 5;
    int v[];
    unknown(v, s, e);

    return 0;

}

void unknown(int v[], int s, int e){
    int a;

    if (s + 1 < e - 1)
        unknown(v, s + 1, e - 1);

    a = v[s];
    printf("valor de a: %d\n", a);
    printf("valor de v[s]: %d\n", v[s]);
    v[s] = v[e];
    printf("valor de v[s]: %d\n", v[s]);
    printf("valor de v[e]: %d\n", v[e]);
    v[e] = a;
    printf("valor de v[e]: %d\n", v[e]);
    printf("valor de v[s]: %d\n", v[s]);
}
