#include <stdio.h>

int main(void) {
    FILE *f = fopen("../input.txt", "r");
    int c, floor = 0, pos = 0, i = 0;
    while ((c = fgetc(f)) != EOF) {
        i++;
        floor += (c == '(') ? 1 : -1;
        if (!pos && floor == -1) pos = i;
    }
    fclose(f);
    printf("%d %d\n", floor, pos);
}
