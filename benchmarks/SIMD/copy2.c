
#include <x86intrin.h>

void copy(int init_arr[], int copy_arr[], unsigned long long int size)
{
	unsigned long long int i;
	for(i=0; i<size; i++)
	{
		copy_arr[i] = init_arr[i];
	}

}
