package demoDay02;

public class Example1 {

	/**
	 * 
	 * ��500���ڵ��걸��
	 */
	public static void main(String[] args) {

		int sum = 500;
		int count;
		for (int i = 1; i <= sum; i++) {

			count = 0;

			for (int j = 1; j < i; j++) {
				if (i % j == 0) {  //�Ƿ��Ǹ���������
					count += j;
				}
				
				if (count >i) {//����Դ�������,�������ô�ѭ��

					continue;
				}

			}
			
			if (count == i) {  //�ж���������Ƿ�Ϊ����   �����ӡ

				System.out.println(i+"\t\t");
			}
			
			
			

		}

	}

}
