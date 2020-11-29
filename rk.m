% rk Degerlerini Kullanarak Duraganl�k Analizi Yapmak 

function [r] = rk(x,m) %r degeri icin fonksiyon girisi yapiyoruz
[n,n1]=size(x); %kullanacagimiz x matrisinin boyutunu n ve n1 degerlerine at�yoruz
r=zeros(m,1); %r icin simdilik 0l�k m,1 boyutlu bir matris al�yoruz
payda=sum((x-mean(x)).^2); %payda da kullanacag�m�z k�sm�n formulunu kolayl�k olsun diye burada hesaplad�k

for k=1:m 
    for i=1:n-k %r(j) degeri icin kullanacag�m�z k ve i'yi ayarlamak ad�na iki ic ice dongu actik
    r(k)=r(k)+(x(i)-mean(x))*(x(i+k)-mean(x)); %istedigim rk degerini bulmak icin rk da kulland�g�m�z formulu 
                                               %k ve x'i kullanarak matlabe
                                               %uyarl�yoruz
    
    end
    r(k)=r(k)/payda; %rk formulunde pay ve payday� kullanarak rk degerlerini buluyoruz
    
end

ust=ones(m,1)*1.96/sqrt(n); %guven aral�g� ust s�n�r
alt=-ust; %guven aral�g� alt s�n�r�
plot(1:m,r,'*',1:m,r,1:m,ust,1:m,alt); %ust alt s�n�r kullanarak r degerlerini cizdirme

end





