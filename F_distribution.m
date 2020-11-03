A1=[20 20 17 19 20 19 21 19]
A2=[21 20 21 22 20 20 23 19]
A3=[25 23 22 23 21 22 22 23]
A4=[26 27 24 27 25 28 26 27]

A1_mean_dif=(A1-mean(A1)).^2
A2_mean_dif=(A2-mean(A2)).^2
A3_mean_dif=(A3-mean(A3)).^2
A4_mean_dif=(A4-mean(A4)).^2

A1_mean_dif_sum=sum(A1_mean_dif)
A2_mean_dif_sum=sum(A2_mean_dif)
A3_mean_dif_sum=sum(A3_mean_dif)
A4_mean_dif_sum=sum(A4_mean_dif)

ngA1=length(A1)
ngA2=length(A2)
ngA3=length(A3)
ngA4=length(A4)

A1g=mean(A1)
A2g=mean(A2)
A3g=mean(A3)
A4g=mean(A4)

NG=length(A1)+length(A2)+length(A3)+length(A4)

k=4
AG=(A1g+A2g+A3g+A4g)/k

SSW=(A1_mean_dif_sum+A2_mean_dif_sum+A3_mean_dif_sum+A4_mean_dif_sum)/(NG-k)

SSA=(ngA1*(A1g-AG)^2)+(ngA2*(A2g-AG)^2)+(ngA3*(A3g-AG)^2)+(ngA4*(A4g-AG)^2)/(k-1)

F=SSA/SSW

dfa=k-1
dfw=NG-k

