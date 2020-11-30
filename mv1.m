%TRENDLER (mt) ve MEVS�MSEL DE����M (st) HESAPLANMASI


function [y] = mv1(yt) %d�nemsel verileri kullanabilecegimiz fonk. olusturuyoruz
[n,n1]=size(yt); %verilerimizin boyutunu at�yoruz
y=zeros(n,1); %verilerimizin sat�r say�s�na g�re 0'l�k y matrisi olusturuyoruz
for i=3:n-2 %ilk 2 ve son 2 veriyi kullanmayacag�m�z sekilde dongu olusturuyoruz
    y(i)=(yt(i-2)/2+yt(i-1)+yt(i)+yt(i+1)+yt(i+2)/2)/4; 
    %y matrisinde yt verilerimizin boyu kadar ilerleyerek mt hesab�
    %yap�l�rken kulland�g�m�z formulu kullanarak hesaplama yap�yoruz
   
end

end



