package demoDay02;

public class Example3 {

	/**
	 * 
	 * �� 2/1+3/2+5/3+8/5+13/8.....ǰ20��֮��
	 */
	public static void main(String[] args) {

		int sum=20; //������
		int sum1=2;  //��������
		int sum2=1;  // ��������
		
		int count=0;
		
		for (int i = 0; i < sum; i++) {
			
			//System.out.println(sum1+"/"+sum2);
			
			//����+��������   ���� �ϴα�������   (sum1+sum2)/sum1
			count+=sum1/sum2;
			sum1+=sum2;
			sum2=sum1-sum2;
		
		}
		System.out.println("ǰ"+sum+"��ֻ�ͣ�"+count);
	}

}
