filename=('E:\SIC\��Դ�������������\�ҵĿ���\ʵ������\NanoIR-AFM\SnSe\2020\KPFM image\KPFM-TXT\24nm256.csv');  %��ȡԭʼ�����ļ�
A=csvread(filename);               %����ԭʼ�ļ��дӵ�m�У���n������ĩβ�ľ�������ΪA����û�У�,m,n������ȫ����ȡ
 
[m,n]=size(A);                     %��ȡ����A����ֵ����ֵ
DiffX=diff(A,1,2);                 %������x��Ĳ�֣�ע�ⵥλ��
DiffY=diff(A,1,1);                 %������y��Ĳ�֣�ע�ⵥλ��

P=BarX; Q=BarY;                    %P(Q): ������X(Y)�᷽���ʵ���Ա����仯ֵ��ע�ⵥλ��
deltax=P/(n-1); deltay=Q/(m-1);    %deltax(y):��x��y���᷽����Ա���΢��ֵdx��y����ע�ⵥλ��
DX=DiffX/deltax;                   %����A��X�����һ��΢�֣�ע�ⵥλ��
DY=DiffY/deltay;                   %����A��Y�����һ��΢�֣�ע�ⵥλ��

DiffXX=diff(DX,1,2);               %һ��΢��DX��x��Ĳ�֣�ע�ⵥλ��
DiffYY=diff(DY,1,1);               %һ��΢��DY��y��Ĳ�֣�ע�ⵥλ��
DiffXY=diff(DX,1,1);               %һ��΢��DX��y��Ĳ�֣�ע�ⵥλ��

DDX=DiffXX/deltax            %����A��X����Ķ���ƫ��
DDY=DiffYY/deltay            %����A��Y����Ķ���ƫ��
DDXY=DiffXY/deltay           %����A��XY���׻��ƫ��

csvwrite('E:\SIC\��Դ�������������\�ҵĿ���\ʵ������\NanoIR-AFM\SnSe\2020\KPFM image\KPFM-TXT\XXX.csv',DDX);  %������DDX���Ϊ�ļ�XXX.csv
End