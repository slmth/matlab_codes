%Diskriminant Analizi Kodlar�

x=[4 6;5 4;6 7;7 6;8 9;9 8;10 9;11 8;12 11];
H=[1 1 1 1 1 0 0 0 0; 0 0 0 0 0 1 1 1 1]';
Xg=inv(H'*H)*H'*x; %gruplar�n ortalamas�
Xort=mean(x); %verilerin ortalamas�

P=x-H*Xg; %her gruptan kendi ortalamas�n�n ��kart�lm��� elde edilir
W=P'*P;
Q=H*Xg-1*Xort;
A=Q'*Q %varyans matrisi
R=x-1*Xort;
T=R'*R;
d=[-2 -1.16]'-[2.5 1.44]'%grup merkezleri arasindaki mesafe
A2=(5*4/9)*d*d' %A de�erinin farkli yolla hesaplanmasi ile A yi dogrulamis olduk 
CW=W/9-2;
ters_CW=1/det(CW)*[0.1333 0.6667;0.6667 -0.3333]
k=(ters_CW)*d

b=inv(W)*A;
[ozdeger,ozvektor]=eig(b)
 

% GOZLEM IZDUSUMLERI

knormalize=[(4.77/(((4.77)^2+(4.36)^2))^(1/2)),(4.36/(((4.77)^2+(4.36)^2))^(1/2))]
t1=knormalize*[-2 -1.16]' 
t2=knormalize*[2.5 1.44]' 

t=R*knormalize'
grup1_ti1=t(1:5)
grup2_ti2=t(6:9)

ti1_fark_t1=grup1_ti1-t1
ti2_fark_t2=grup2_ti2-t2


SSA=knormalize*A*knormalize' %grup_data_sayisi(merkez+toplam merkez)ya da k'li olan formul k*A*k'

SSW=sum(ti1_fark_t1.^2)+sum(ti2_fark_t2.^2) 
%ti1'in t1'lerden fark� ve ti2'nin t2'lerden fark� de�erlerinin her birinin karesinin toplanmas�yla SSW elde edilir
%iki parcaya ay�rd�g�m�z icin iki k�sm�n ayr� ayr� kareler toplam�n� al�p
%en son tek bir toplam de�er elde ettim 

%SSWyi kl� formulu kullanarak dogrularsak

SSW_kliformul=knormalize*W*knormalize'

%DHi^2 i�in

% grup merkezleri ve xdler (R s�tun1 ve s�tun2den gelen xd1 ve xd2 degerleri) 
%kullan�larak cevaplar bulunursa [-2 -1.16] ve [2.5 1.44] merkezlerimiz yerine yaz�ld�g�nda

DH11=[-4+2 -1.56+1.16]*ters_CW*[-4+2 -1.56+1.16]'
DH22=[-3+2 -3.56+1.16]*ters_CW*[-3+2 -3.56+1.16]'
DH33=[-2+2 -0.56+1.16]*ters_CW*[-2+2 -0.56+1.16]'
DH44=[-1+2 -1.56+1.16]*ters_CW*[-1+2 -1.56+1.16]'
DH55=[0+2 1.44+1.16]*ters_CW*[0+2 1.44+1.16]'

%ilk 5 degerden sonrasi icin ikinci parcanin d degeri cikartilarak h-xh-xi
%bulunup ona g�re islem yap�ld�g�nda

DH66=[1-2.5 0.44-1.44]*ters_CW*[1-2.5 0.44-1.44]'
DH77=[2-2.5 1.44-1.44]*ters_CW*[2-2.5 1.44-1.44]'
DH88=[3-2.5 0.44-1.44]*ters_CW*[3-2.5 0.44-1.44]'
DH99=[4-2.5 3.44-1.44]*ters_CW*[4-2.5 3.44-1.44]'

