function infectrain=month
lujing=input('������·����-------->','s');
userpath(lujing)%%���������������û���Ĭ��·��
mu=dir(lujing);
for i=3:length(mu)
 [~,~,raw]=xlsread(mu(i).name,'Sheet1');
 s=i-2;
 infec(s).checi=[];
 infec(s).upanddown=[];
 infec(s).zhanshu=[];
 infec(s).dingyuan=[];
 date=raw{2,1}(9:16);
 infec(s).date=date;
 [h,lie]=size(raw);
 first=[];
 last=[];
 hengxiang=[];
 for j=1:h
 if strcmp(raw{j,1},'�ϳ�վ')
 first=[first,j-1];
 end
 end
 for j=1:h
 if strcmp(raw{j,1},'�ϳ������ϼ�')
 last=[last,j];
 end
 end
 allnumtrain=length(first);
 %%����� hengxiang ��Ҫ����ֻҪ�ǰ������³������ϼơ�������============
 for j=1:allnumtrain
 first_l=first(j)+1;
 for j=1:lie
 if strcmp(raw{first_l,j},'�³������ϼ�')
 hengxiang=[hengxiang,j];%�������ȡ������
 end
 end
 end
 %%%%�������Ҵ��㽫���³�վ����ṹ��� infec(i).numofpeopleup[checi]��
infec(i).numofpeople
 %%%%down[checi]==================================================
 %%���Ǵ�������������ϳ������ϼ�
 for j=1:allnumtrain
 up_l=last(j);
 for i=3:hengxiang(j)
 infec(s).numofpeopleup(j,i-2)=raw{up_l,i};
 end
 end
 %%%���Ǵ�������������³������ϼ�
 for j=1:allnumtrain
 down_l=hengxiang(j);
 for i=(first(j)+3):(last(j)-1)
 infec(s).numofpeopledown(j,i-(first(j)+2))=raw{i,down_l};
 end
 end
 %%%===================����Ҫ��վ�����===========================
 file=fopen('d:\data.txt','wt');
 for c=1:allnumtrain
 inf=regexp(raw{first(c),1},'\s+','split');
 checi=inf(1);
 upanddown=inf(2);
 dingyuan=inf(7);
 zhanshu=last(c)-first(c)-3;
 %%%����վ̨
 for i=(first(c)+3):(first(c)+2+zhanshu)
 infec(s).zhantai{c,i-first(c)-2}=raw{i,1};
 end
 infec(s).checi=[infec(s).checi,checi];
 infec(s).upanddown=[infec(s).upanddown,upanddown];
 infec(s).zhanshu=[infec(s).zhanshu,zhanshu];
 infec(s).dingyuan=[infec(s).dingyuan,dingyuan];
 end
 infec(s).juli=cell(1,allnumtrain);
 infec(s).allnumtrain=allnumtrain;
 infec(s).xuhao=cell(1,allnumtrain);
 for c=1:allnumtrain
 i3=1;
 for i=(first(c)+3):(last(c)-1)
 if strcmp(raw{i,1},'ZD111-01')
 infec(s).juli{1,c}(1,i3)=0;
 infec(s).xuhao{1,c}(1,i3)=(i-first(c)-2);
 i3=i3+1;
 elseif strcmp(raw{i,1},'ZD111-03')
 infec(s).juli{1,c}(1,i3)=0;
 infec(s).xuhao{1,c}(1,i3)=(i-first(c)-2);
 i3=i3+1;
 elseif strcmp(raw{i,1},'ZD111-02')
 infec(s).juli{1,c}(1,i3)=3;
 infec(s).xuhao{1,c}(1,i3)=(i-first(c)-2);
 i3=i3+1;
 elseif strcmp(raw{i,1},'ZD311')
 infec(s).juli{1,c}(1,i3)=49;
 infec(s).xuhao{1,c}(1,i3)=(i-first(c)-2)
 i3=i3+1;
 elseif strcmp(raw{i,1},'ZD326')
 infec(s).juli{1,c}(1,i3)=110;
 infec(s).xuhao{1,c}(1,i3)=(i-first(c)-2);
 i3=i3+1;
 elseif strcmp(raw{i,1},'ZD192')
 infec(s).juli{1,c}(1,i3)=153;
 infec(s).xuhao{1,c}(1,i3)=(i-first(c)-2);
 i3=i3+1;
 elseif strcmp(raw{i,1},'ZD022')
 infec(s).juli{1,c}(1,i3)=186;
 infec(s).xuhao{1,c}(1,i3)=(i-first(c)-2);
 i3=i3+1;
 elseif strcmp(raw{i,1},'ZD250')
 infec(s).juli{1,c}(1,i3)=210;
 infec(s).xuhao{1,c}(1,i3)=(i-first(c)-2);
 i3=i3+1;
 elseif strcmp(raw{i,1},'ZD062')
 infec(s).juli{1,c}(1,i3)=295;
 infec(s).xuhao{1,c}(1,i3)=(i-first(c)-2);
 i3=i3+1;
 elseif strcmp(raw{i,1},'ZD120')
 infec(s).juli{1,c}(1,i3)=320;
 infec(s).xuhao{1,c}(1,i3)=(i-first(c)-2);
 i3=i3+1;
 elseif strcmp(raw{i,1},'ZD121')
 infec(s).juli{1,c}(1,i3)=330;
 infec(s).xuhao{1,c}(1,i3)=(i-first(c)-2);
 i3=i3+1;
 elseif strcmp(raw{i,1},'ZD143')
 infec(s).juli{1,c}(1,i3)=341;
 infec(s).xuhao{1,c}(1,i3)=(i-first(c)-2);
 i3=i3+1;
 elseif strcmp(raw{i,1},'ZD370')
 infec(s).juli{1,c}(1,i3)=362;
 infec(s).xuhao{1,c}(1,i3)=(i-first(c)-2);
 i3=i3+1;
 elseif strcmp(raw{i,1},'ZD190-02')
 infec(s).juli{1,c}(1,i3)=378;
 infec(s).xuhao{1,c}(1,i3)=(i-first(c)-2);
 i3=i3+1;
 elseif strcmp(raw{i,1},'ZD190-01')
 infec(s).juli{1,c}(1,i3)=393;
 infec(s).xuhao{1,c}(1,i3)=(i-first(c)-2);
 i3=i3+1;
 end
 end
 end
 infec(s).allnumtrain=allnumtrain;
end
infectrain=infec;