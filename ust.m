function [F] = ust(xt,alfa) %alfa degerimize ve xt verilerimize bagli ust isimli bir fonk. aciyoruz

[n,n1]=size(xt); %xt olarak aldigimiz verimizin boyutlarini n ve n'e atiyoruz
F=zeros(n+1,1); %verinin 1 fazlasina kadar 0'lardan olusan matris aliyoruz
F(2)=xt(1); %F2 degeri xt'nin 1.degerine tekabul ettiginden o degeri aliyoruz ki 
%F(2) yi kullanarak diger adýmlari da bu adým uzerinden hesaplayabilelim
for i=3:n+1 %ilk 2 veri haric hesaplamaya basladigimiz icin 3'ten n+1'e kadar aliyoruz
 F(i)=alfa*xt(i-1)+(1-alfa)*F(i-1); %tum adimlari gerekli formule atayarak hesaplýyoruz
end


end


