#include <stdio.h>
#include "average/average.h"

int main(int argc, char const *argv[])
{
    /* code */
    float array[] = {-1.0, 0.0, 1.0, 2.0, 3.0};
    float avg = average(array, 5) ;
    printf("Average Value = %f" , avg);

    return 0;
}
