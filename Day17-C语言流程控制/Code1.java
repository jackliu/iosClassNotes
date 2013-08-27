
#include "stdio.h"


/**
 * 利用 For 循环
 */
void method1() {
		for (int i = 1; i < 10; i++) {
			for (int j = 1; j <= i; j++) {
				printf("%d * %d = %d\t",i,j,(i * j);
				if (i == j)
					printf("\n");
			}
		}
}

/**
 * 利用 while 循环
 */
void method2() {
		int i = 1;
		while (i <= 9) {
			for (int n = 1; n <= i; n++) {
				printf("%d * %d = %d\t",n,i,(n * i));
			}
			printf("\n");
			i++;
		}
}

/**
 * 在 for 循环中利用 continue
 */
void method3() {
		outer: for (int i = 1; i < 10; i++) {
			inner: for (int j = 1; j < 10; j++) {
				printf("%d * %d = %d\t",i,j,(i * j));
				if (i == j) {
					printf();
					continue outer;
				}
			}
		}
}

/**
 * 使用数组进行计算
 */
void method4() {
		int[] a = new int[10]; // 数组里的数字最好大于9
		int[] b = new int[10];
		int m = 0;
		printf("-----------------");
		for (int i = 1; i < 10; i++) { // FOR后面的（）里一定要加INT
			a[i] = i;
			for (int j = 1; j <= i; j++) {
				b[j] = j;
				m = b[j] * a[i];
				printf("%d * %d = %d\t",i,j,m );
				if (i == j)
					printf("\n");
			}
		}
}

/**
 * 图形化输出
 */
void method5() {
		int i, j;
		printf("    *   |");
		for (i = 1; i <= 9; i++)
			printf(" %d ",i);

		printf("\n--------|");
		for (i = 1; i < 10; i++)
			printf("-----");
		
		printf("\n");

		for (i = 1; i < 10; i++) {
			printf("%d  | ",i);
			for (j = 1; j <= i; j++)
				printf("   %d   ",(i * j);
			
			printf("\n");
		}
	}

/**
 * 利用for循环打印 9*9 表
 * 
 * @author Administrator
 * 
 */

int main() {
	
	method1();
	method2();
		
	method3();
	method4();
	method5();

	return 0;
}

	
