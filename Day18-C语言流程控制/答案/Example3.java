package demoDay02;

public class Example3 {

	/**
	 * 
	 * 求 2/1+3/2+5/3+8/5+13/8.....前20项之和
	 */
	public static void main(String[] args) {

		int sum=20; //多少项
		int sum1=2;  //被除数据
		int sum2=1;  // 除的数据
		
		int count=0;
		
		for (int i = 0; i < sum; i++) {
			
			//System.out.println(sum1+"/"+sum2);
			
			//被除+除的数据   除以 上次被除数据   (sum1+sum2)/sum1
			count+=sum1/sum2;
			sum1+=sum2;
			sum2=sum1-sum2;
		
		}
		System.out.println("前"+sum+"项只和："+count);
	}

}
