#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>

int generate_random_number() {
    return rand() % 100 + 1;  // Pas het bereik aan zoals nodig
}

int main() {
    srand(time(NULL));  // Initialiseer de willekeurige generator met de huidige tijd

    while (1) {
        int random_number = generate_random_number();
        printf("Willekeurig getal: %d\n", random_number);
        sleep(10);  // Wacht 10 seconden voordat het volgende getal wordt gegenereerd
    }

    return 0;
}
