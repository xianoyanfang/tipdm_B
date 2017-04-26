%%%在这里我们实现的是将_日期，车次，车站，上车人数，下车人数_ 读到 txt 文本中
%%%%======在这里读入 txt 文件中去=====================================
 file=fopen('d:\data.txt','wt');
 for day=1:31
 date=infectrain(day).date;
 Date=date;
 fprintf(file,'%s\r\n',Date);
 for num=1:infectrain(day).allnumtrain
 checi=infectrain(day).checi{num};
 fprintf(file,'%s\r\n',checi);
 zhantai=[];
 for i=1:infectrain(day).zhanshu(num)
 fprintf(file,'%s',infectrain(day).zhantai{num,i});
 fprintf(file,'%s\t',[]);
 end
 fprintf(file,'%s\r\n',[]);
 for i=1:infectrain(day).zhanshu(num)
 fprintf(file,'%d',infectrain(day).numofpeopleup(num,i));
 fprintf(file,'%s\t',[]);
 end
 fprintf(file,'%s\r\n',[]);
 for i=1:infectrain(day).zhanshu(num)
fprintf(file,'%d',infectrain(day).numofpeopledown(num,i));
 fprintf(file,'%s\t',[]);
 end
 fprintf(file,'%s\r\n',[]);
 end
 fprintf(file,'%s\r\n',[]);
 end
 fclose(file);