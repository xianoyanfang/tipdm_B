%%%¼ÆËã¿Í×ùÂÊ
load infectrain.mat;
for i=1:31
 for j=1:infectrain(i).allnumtrain
 if length(infectrain(i).juli{1,j})>0
kezuozong=str2num(infectrain(i).dingyuan{1,j})*(infectrain(i).juli{1,
j}(1,length(infectrain(i).juli{1,j}))-infectrain(i).juli{1,j}(1,1));
 ontrain=0;
 sum=0;
 xuhao=infectrain(i).xuhao{1,j}(1,1);
 for k=1:xuhao
ontrain=ontrain+infectrain(i).numofpeopleup(j,k)-infectrain(i).numofp
eopledown(j,k);
 end
 for k=2:(length(infectrain(i).xuhao{1,j}))
sum=sum+ontrain*abs(infectrain(i).juli{1,j}(1,k-1)-infectrain(i).juli
{1,j}(1,k));
ontrain=ontrain+infectrain(i).numofpeopleup(j,xuhao+k-1)-infectrain(i
).numofpeopledown(j,xuhao+k-1);
 end
 kezuolv1(i,j)=sum/kezuozong;
 else
 kezuolv1(i,j)=0;
 end
 end
end