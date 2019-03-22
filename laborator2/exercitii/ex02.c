#include <stdio.h>
#include <stdlib.h>
#include <limits.h>


int main(int argc, char **argv)
{
    int index = 2, nr, min = 99999, media = 0;

    if(argc >= 1)
    {
        while (index < argc)
        {
            nr = atoi(argv[index]);
            if (nr < min)
                min = nr;
         media += nr;
         index++;
        }
        printf("Minimul este: %d\nMedia numerelor este: %f\n", min, (float)media / atoi(argv[1]));
    }
    return (0);
}
