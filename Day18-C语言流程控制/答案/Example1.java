package demoDay02;

public class Example1 {

	/**
	 * 
	 * 求500以内的完备数
	 */
	public static void main(String[] args) {

		int sum = 500;
		int count;
		for (int i = 1; i <= sum; i++) {

			count = 0;

			for (int j = 1; j < i; j++) {
				if (i % j == 0) {  //是否是该数的因数
					count += j;
				}
				
				if (count >i) {//如果以大于因数,则跳出该次循环

					continue;
				}

			}
			
			if (count == i) {  //判断因数相加是否为本身   是则打印

				System.out.println(i+"\t\t");
			}
			
			
			

		}

	}

}
