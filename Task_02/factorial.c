#include <stdio.h>

int computefactorial(int x) {
	int result = 1;
	for (int i = x; i > 0; i--) {
		result = result * i;
	}
	return result;
}

int main(int argc,  char *argv[]) {
	if (argc != 2) {
		printf("Must have only 1 argument\n");
		return 1;
	}
	if (*argv[1] < '0' || *argv[1] > '9' || argv[1][1] != '\0') {
		printf("Must be a valid integer from 0-9\n");
		return 1;
	}
	int num = *argv[1] - '0';
	int factorial = computefactorial(num);
	printf("%d\n", factorial);
	return 0;
}

