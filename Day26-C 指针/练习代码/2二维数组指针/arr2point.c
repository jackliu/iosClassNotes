# include <stdio.h>

void main()
{
	int num;
	/* �����Ӻ��� */
	void average(float *point, int n);
	void search(float(*point)[4], int n);

	/* ����һ����̬�洢���鲢����ֵ */
	static float score[4][4] = {{76, 90, 92, 87}, {68, 78, 69, 94},  
	                            {89, 82, 81, 60}, {81, 68, 60, 97}};

	printf("�༶����ƽ���֣�");
	average(*score, 16);    /* ���ú���average��12��������ƽ���� */
	printf("������ѧ����ѧ��(0-3)��");
	scanf("%d", &num);
	search(score, num);    /* ������ĸ�ѧ���ĳɼ� */
}

/* �Ӻ������� */
void average(float *point, int n)
{
	float *p_end;
	float aver;
	float sum = 0;
	p_end = point + n -1;
	for(; point<=p_end; point++)
		sum = sum + (*point);
	aver = sum/n;
	printf("%5.2f\n", aver);
}

void search(float(*point)[4], int n)
{
	int i;
	for(i=0; i<4; i++)
		printf("%5.2f ", *(*(point+n)+i));
	printf("\n");
}