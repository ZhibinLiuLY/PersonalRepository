filename=('E:\SIC\无源集成器件与材料\我的课题\实验数据\NanoIR-AFM\SnSe\2020\KPFM image\KPFM-TXT\24nm.csv');  %读取原始矩阵文件
A=csvread(filename,m,n);           %命名原始文件中从第m行，第n列起至末尾的矩阵并命名为A，若没有（,m,n），则全部读取
x=linspace(1,k,a);                 %命名等差数列x（从1起，k结束，线性a个点）；表明插值后，原数据分别在哪些列上（即：插值后，原数据在x轴的哪些位置）
y=linspace(1,k,a);                 %命名等差数列y（从1起，k结束，线性a个点）；表明插值后，原数据分别在哪些行上（即：插值后，原数据在y轴的哪些位置）
[X,Y]=meshgrid(x,y);               %命名原数据在插值后矩阵中的位置矩阵[X,Y]
x=1:p;                             %p为插值后矩阵列数
y=1:q;                             %q为插值后矩阵行数
[Xi,Yi]=meshgrid(x,y);             %创建插值后矩阵的大小矩阵[Xi,Yi]
B=interp2(X,Y,A,Xi,Yi);            %对A矩阵中的个元素分别放在大小为[Xi，Yi]的矩阵中的[X，Y]位置中，并对其进行线性插值后命名为矩阵B
C=interp2(X,Y,A,Xi,Yi);            %对A矩阵中的个元素分别放在大小为[Xi，Yi]的矩阵中的[X，Y]位置中，并对其进行非线性插值后命名为矩阵B
csvwrite('E:\SIC\无源集成器件与材料\我的课题\实验数据\NanoIR-AFM\SnSe\2020\KPFM image\KPFM-TXT\B.csv',B)  %将矩阵B输出为文件B.csv