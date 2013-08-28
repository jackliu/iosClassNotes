package demoDay02;

public class Example2 {

	/**
	 * 
	 * 求  a+aa+aaa+.......+aaaaaaaaa
	 */
	public static void main(String[] args) {
		
		int sum=5;  //数字
		int sum1=9;  //项数
		long count=0;  //综合
		int count1;  //计算位
		
		for(int i=0;i<sum1;i++){
			count1=0;
			for (int j = 0; j <= i; j++) {
				count1*=10;
				count1+=sum;
				
				
			}
			System.out.println(count1);
			count+=count1;
		}
			System.out.println(count);
	
	}

}
