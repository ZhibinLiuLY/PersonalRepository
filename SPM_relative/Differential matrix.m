filename=('E:\SIC\无源集成器件与材料\我的课题\实验数据\NanoIR-AFM\SnSe\2020\KPFM image\KPFM-TXT\24nm256.csv');  %读取原始矩阵文件
A=csvread(filename);               %命名原始文件中从第m行，第n列起至末尾的矩阵并命名为A，若没有（,m,n），则全部读取
 
[m,n]=size(A);                     %获取矩阵A的行值与列值
DiffX=diff(A,1,2);                 %矩阵沿x轴的差分（注意单位）
DiffY=diff(A,1,1);                 %矩阵沿y轴的差分（注意单位）

P=BarX; Q=BarY;                    %P(Q): 矩阵沿X(Y)轴方向的实际自变量变化值（注意单位）
deltax=P/(n-1); deltay=Q/(m-1);    %deltax(y):沿x（y）轴方向的自变量微分值dx（y）（注意单位）
DX=DiffX/deltax;                   %矩阵A沿X方向的一阶微分（注意单位）
DY=DiffY/deltay;                   %矩阵A沿Y方向的一阶微分（注意单位）

DiffXX=diff(DX,1,2);               %一阶微分DX沿x轴的差分（注意单位）
DiffYY=diff(DY,1,1);               %一阶微分DY沿y轴的差分（注意单位）
DiffXY=diff(DX,1,1);               %一阶微分DX沿y轴的差分（注意单位）

DDX=DiffXX/deltax            %矩阵A沿X方向的二阶偏导
DDY=DiffYY/deltay            %矩阵A沿Y方向的二阶偏导
DDXY=DiffXY/deltay           %矩阵A的XY二阶混合偏导

csvwrite('E:\SIC\无源集成器件与材料\我的课题\实验数据\NanoIR-AFM\SnSe\2020\KPFM image\KPFM-TXT\XXX.csv',DDX);  %将矩阵DDX输出为文件XXX.csv
End