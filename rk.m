% rk Degerlerini Kullanarak Duraganlýk Analizi Yapmak 

function [r] = rk(x,m) %r degeri icin fonksiyon girisi yapiyoruz
[n,n1]=size(x); %kullanacagimiz x matrisinin boyutunu n ve n1 degerlerine atýyoruz
r=zeros(m,1); %r icin simdilik 0lýk m,1 boyutlu bir matris alýyoruz
payda=sum((x-mean(x)).^2); %payda da kullanacagýmýz kýsmýn formulunu kolaylýk olsun diye burada hesapladýk

for k=1:m 
    for i=1:n-k %r(j) degeri icin kullanacagýmýz k ve i'yi ayarlamak adýna iki ic ice dongu actik
    r(k)=r(k)+(x(i)-mean(x))*(x(i+k)-mean(x)); %istedigim rk degerini bulmak icin rk da kullandýgýmýz formulu 
                                               %k ve x'i kullanarak matlabe
                                               %uyarlýyoruz
    
    end
    r(k)=r(k)/payda; %rk formulunde pay ve paydayý kullanarak rk degerlerini buluyoruz
    
end

ust=ones(m,1)*1.96/sqrt(n); %guven aralýgý ust sýnýr
alt=-ust; %guven aralýgý alt sýnýrý
plot(1:m,r,'*',1:m,r,1:m,ust,1:m,alt); %ust alt sýnýr kullanarak r degerlerini cizdirme

end





