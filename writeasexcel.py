%%%��_���ڣ����Σ���վ���ϳ��������³�����_ ��
%%%��ǰ�������Ѿ�����������ݰ�����һ���ṹ����
%%%����������Ҫ�ľ��ǽ���Щ����д�롮data[i].xlsx����i=1,2,3....��
%%%���������ǽ�Ҫ��Ҫ�������д�� xls ��
clc;clear;
load('infectrain.mat')
for day=1:31
 filename=['d:\data',num2str(day),'.xlsx'];
 %%%���Ƕ�������
 Date={infectrain(day).date};
 %%%����
 xlswrite(filename,Date,'Sheet1');
 %%%���Ǵ��㽫��վ���ϳ��������³��������ϳ�һ��������
 %%%������ cat �������
 %%%�����Ƚ��Ǽ���Ҫ��������ݱ��һ��Ԫ��
 n=3;
 for num=1:infectrain(day).allnumtrain
 checi={infectrain(day).checi{num}};
 xlswrite(filename,checi,'Sheet1',['A' num2str(n)]);
 for i=1:infectrain(day).zhanshu(num)
 zhantai{1,i}=infectrain(day).zhantai{num,i};
 numofpeopleup{1,i}=infectrain(day).numofpeopleup(num,i);

numofpeopledown{1,i}=infectrain(day).numofpeopledown(num,i);
 end
 A=cat(1,zhantai,numofpeopleup,numofpeopledown);%%%�� 3 ��Ԫ�����
��һ��������
 xlswrite(filename,A,'Sheet1',['A' num2str(n+1)]);%%%%������� 3 ��
 n=n+4;
 clear checi zhantai numofpeopleup numofpeopledown;
 end
 clear Date;
end