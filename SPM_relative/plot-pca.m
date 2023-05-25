data=xlsread('score1.csv');%????
x=1:512;y=1:512;
[X,Y]=meshgrid(x,y);
mesh(X,Y,data);%?data??
shading interp;
view([0 0 1])
axis([0,512,0,512]);data=xlsread('score2.csv');%????
x=1:1024;y=1:512;
[X,Y]=meshgrid(x,y);
mesh(X,Y,data);%?data??
shading interp;
view([0 0 1])
axis([0,1024,0,512]);