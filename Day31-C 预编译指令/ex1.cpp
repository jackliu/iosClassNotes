// ex1.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <stdio.h>

#define FOR(COUNT)\
	{\
		for(int i = 0; i < COUNT; i++)
#define LINE(COUNT) \
	FOR(COUNT)\
		printf("©¤");\
	}
#define SPACE(COUNT) \
	FOR(COUNT)\
		printf("  ");\
	}
#define RECTANGLE(LENGTH,WIDTH)\
	printf("©°");\
	LINE(LENGTH);\
	printf("©´\n");\
	FOR(WIDTH)\
	{\
		printf("©¦");\
		SPACE(LENGTH);\
		printf("©¦");\
		printf("\n");\
	}\
	}\
	printf("©¸");\
	LINE(LENGTH);\
	printf("©¼");\

int main(int argc, char* argv[])
{
	RECTANGLE(10,10);
	printf("\n");
	return 0;
}
