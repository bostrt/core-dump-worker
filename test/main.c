#include <stdlib.h>
#include <unistd.h>

int main() {
    char *time = getenv("TIME");
    if (time == NULL) {
        time = "60";
    }
    sleep(atoi(time));
}