files=dir('*.csv');
filenumber=length(files);
for i=1:filenumber
    str=files(i).name;
    temp=load(str);
    orig(:,:,i)=temp;
    redimen(:,i)=temp(:);
end

[coeff,score,latent] = pca(redimen);
[M,N]=size(orig(:,:,1));

if exist('PCAout','dir')==0
  mkdir('PCAout');
end

for i=1:filenumber
    P=score(:,i);
    Q=reshape(P,M,N);
    string1=num2str(i,'%d');
    string2=strcat('PCAout/score',string1,'.csv');
    csvwrite(string2,Q);
    
end

csvwrite('PCAout/cov.csv',cov(redimen));
csvwrite('PCAout/coeff.csv',coeff);
csvwrite('PCAout/latent.csv',[latent,latent./sum(latent)]);
