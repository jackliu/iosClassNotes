package demoDay02;

public class Example2 {

	/**
	 * 
	 * ��  a+aa+aaa+.......+aaaaaaaaa
	 */
	public static void main(String[] args) {
		
		int sum=5;  //����
		int sum1=9;  //����
		long count=0;  //�ۺ�
		int count1;  //����λ
		
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
