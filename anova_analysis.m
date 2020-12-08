A=[1 1 2 3 3 3 4 1 2 1 4 3 2 2];
B=[3 3 4 2 2 2 2 4 4 2 3 1 1];
C=[1 1 1 2 2 2 4 5 5 4 3 2 6];

NA=length(A);
NB=length(B);
NC=length(C);

NG=NA+NB+NC;

Aort=mean(A);
Bort=mean(B),
Cort=mean(C);

Aort_fark=(A-mean(A)).^2;
Bort_fark=(B-mean(B)).^2;
Cort_fark=(C-mean(C)).^2;

Aortfark_toplam=sum(Aort_fark);
Bortfark_toplam=sum(Bort_fark);
Cortfark_toplam=sum(Cort_fark);

k=3

ABC_ort=(Aort+Bort+Cort)/k;

SSW=(Aortfark_toplam+Bortfark_toplam+Cortfark_toplam);

SSB=14*((Aort-ABC_ort)^2)+13*((Bort-ABC_ort)^2)+13*((Cort-ABC_ort)^2);

SST=sum((A-ABC_ort).^2)+sum((B-ABC_ort).^2)+sum((C-ABC_ort).^2);

MSB=SSB/(k-1);

MSE=SSW/(NG-k);

F=MSB/MSE;

etki_derecesi=SSB/SST;
