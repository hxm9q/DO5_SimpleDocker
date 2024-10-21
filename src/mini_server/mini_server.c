#include <stdio.h>
#include <fcgi_stdio.h>

int main(void) {
    while (FCGI_Accept() >= 0) {
        printf("Content-type: text/html\nStatus: 200 OK\n\nHello World!\n");
    }
    return 0;
}