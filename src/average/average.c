
float average(float arr[], unsigned int size)
{
	float temp;
	for(unsigned int i = 0; i < size; i++)
	{
	    temp += arr[i];
	}
	return temp / (float)size;
	
}