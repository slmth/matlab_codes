%TRENDLER (mt) ve MEVSÝMSEL DEÐÝÞÝM (st) HESAPLANMASI


function [y] = mv1(yt) %dönemsel verileri kullanabilecegimiz fonk. olusturuyoruz
[n,n1]=size(yt); %verilerimizin boyutunu atýyoruz
y=zeros(n,1); %verilerimizin satýr sayýsýna göre 0'lýk y matrisi olusturuyoruz
for i=3:n-2 %ilk 2 ve son 2 veriyi kullanmayacagýmýz sekilde dongu olusturuyoruz
    y(i)=(yt(i-2)/2+yt(i-1)+yt(i)+yt(i+1)+yt(i+2)/2)/4; 
    %y matrisinde yt verilerimizin boyu kadar ilerleyerek mt hesabý
    %yapýlýrken kullandýgýmýz formulu kullanarak hesaplama yapýyoruz
   
end

end



