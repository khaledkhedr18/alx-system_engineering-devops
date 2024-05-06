#include <stdio.h>

/**
 * print_text - this function prints texts to stdout
 * @text: the text to print
 * Return: 0 on success, -1 on failure
*/

char print_text(char *text)
{
	int i;
    for (i = 0; text[i]!= '\0'; i++)
    {
        putchar(text[i]);
    }
    putchar('\n');
    return (0);
}


int main(int argc, char *argv[])
{
	int count = argc;

	printf("\n The number of arguments passed is [%d] \n", count);

	int c = 1;
	while (c < count)
	{
		printf("\n The argument [%d] is [%s] \n", c, argv[c]);
        c++;
	}
	return 0;
}
