%%%“_日期，车次，车站，上车人数，下车人数_ ”
%%%在前面我们已经将上面的数据包含在一个结构体中
%%%所以我们需要的就是将这些数据写入‘data[i].xlsx’，i=1,2,3....中
%%%接下来我们将要将要求的数据写入 xls 中
clc;clear;
load('infectrain.mat')
for day=1:31
 filename=['d:\data',num2str(day),'.xlsx'];
 %%%我们读入日期
 Date={infectrain(day).date};
 %%%换行
 xlswrite(filename,Date,'Sheet1');
 %%%我们打算将车站，上车人数，下车人数整合成一个大表读入
 %%%我们用 cat 这个函数
 %%%我们先将那几个要读入的数据变成一个元胞
 n=3;
 for num=1:infectrain(day).allnumtrain
 checi={infectrain(day).checi{num}};
 xlswrite(filename,checi,'Sheet1',['A' num2str(n)]);
 for i=1:infectrain(day).zhanshu(num)
 zhantai{1,i}=infectrain(day).zhantai{num,i};
 numofpeopleup{1,i}=infectrain(day).numofpeopleup(num,i);

numofpeopledown{1,i}=infectrain(day).numofpeopledown(num,i);
 end
 A=cat(1,zhantai,numofpeopleup,numofpeopledown);%%%将 3 个元胞组合
成一个大表读入
 xlswrite(filename,A,'Sheet1',['A' num2str(n+1)]);%%%%这里读了 3 行
 n=n+4;
 clear checi zhantai numofpeopleup numofpeopledown;
 end
 clear Date;
end