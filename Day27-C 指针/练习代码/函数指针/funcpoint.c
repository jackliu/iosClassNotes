# include <stdio.h>
# include <string.h>

void check(char *a, char *b, int(*cmp)(const char *, const char *));

void main()
{
	char s1[80], s2[80];
	int(*p)(const char *, const char *);    /* ����ָ�� */

	p = strcmp;    /* ������strcmp�ĵ�ַ��������ָ��p */

	printf("���������ַ�����\n");
	gets(s1);    /* �����ַ���1 */
	gets(s2);    /* �����ַ���2 */

	check(s1, s2, p);    /* ͨ��ָ�����p���ݺ���strcmp�ĵ�ַ */
}

void check(char *a, char *b, int(*cmp)(const char *, const char *))
{
	printf("�����Ƿ����\n");
	if(!(*cmp)(a, b))
		printf("��������\n");
	else
		printf("����������\n");
}