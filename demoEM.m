clear all;
close all;
load mnist_all.mat;
N=zeros(1,10);
N(1)=size(train0,1);
N(2)=size(train1,1);
N(3)=size(train2,1);
N(4)=size(train3,1);
N(5)=size(train4,1);
N(6)=size(train5,1);
N(7)=size(train6,1);
N(8)=size(train7,1);
N(9)=size(train8,1);
N(10)=size(train9,1);
K=[1 2 4 8 16 32];    
%------------------------------------------------------
train0(train0<3)=0;
train0(train0>0)=1;
train1(train1<3)=0;
train1(train1>0)=1;
train2(train2<3)=0;
train2(train2>0)=1;
train3(train3<3)=0;
train3(train3>0)=1;
train4(train4<3)=0;
train4(train4>0)=1;
train5(train5<3)=0;
train5(train5>0)=1;
train6(train6<3)=0;
train6(train6>0)=1;
train7(train7<3)=0;
train7(train7>0)=1;
train8(train8<3)=0;
train8(train8>0)=1;
train9(train9<3)=0;
train9(train9>0)=1;
%---------------------------------------------------------
test0(test0<3)=0;
test0(test0>0)=1;
test1(test1<3)=0;
test1(test1>0)=1;
test2(test2<3)=0;
test2(test2>0)=1;
test3(test3<3)=0;
test3(test3>0)=1;
test4(test4<3)=0;
test4(test4>0)=1;
test5(test5<3)=0;
test5(test5>0)=1;
test6(test6<3)=0;
test6(test6>0)=1;
test7(test7<3)=0;
test7(test7>0)=1;
test8(test8<3)=0;
test8(test8>0)=1;
test9(test9<3)=0;
test9(test9>0)=1;
%--------------------------------------------------------
tic
k=5;
train=double(train0);
[m0,p0]= EM(train,k);
train=double(train1);
[m1,p1]= EM(train,k);
train=double(train2);
[m2,p2]= EM(train,k);
train=double(train3);
[m3,p3]= EM(train,k);
train=double(train4);
[m4,p4]= EM(train,k);
train=double(train5);
[m5,p5]= EM(train,k);
train=double(train6);
[m6,p6]= EM(train,k);
train=double(train7);
[m7,p7]= EM(train,k);
train=double(train8);
[m8,p8]= EM(train,k);
train=double(train9);
[m9,p9]= EM(train,k);
train=0;
toc
%--------------------------------------------------------
count=0;
testDataz=0;
for n=1:size(test0,1)
    Prs=zeros(1,10);
    test02=double(test0(n,:));
    Prs(1)=N(1)*mixBernoulli(test02,m0,p0);
    Prs(2)=N(2)*mixBernoulli(test02,m1,p1);
    Prs(3)=N(3)*mixBernoulli(test02,m2,p2);
    Prs(4)=N(4)*mixBernoulli(test02,m3,p3);
    Prs(5)=N(5)*mixBernoulli(test02,m4,p4);
    Prs(6)=N(6)*mixBernoulli(test02,m5,p5);
    Prs(7)=N(7)*mixBernoulli(test02,m6,p6);
    Prs(8)=N(8)*mixBernoulli(test02,m7,p7);
    Prs(9)=N(9)*mixBernoulli(test02,m8,p8);
    Prs(10)=N(10)*mixBernoulli(test02,m9,p9);
    [~,I]=max(Prs);
    if(I==1)
        count=count+1;
    end  
end
testDataz=testDataz+size(test0,1);

for n=1:size(test1,1)
    Prs=zeros(1,10);
    test02=double(test1(n,:));
    Prs(1)=N(1)*mixBernoulli(test02,m0,p0);
    Prs(2)=N(2)*mixBernoulli(test02,m1,p1);
    Prs(3)=N(3)*mixBernoulli(test02,m2,p2);
    Prs(4)=N(4)*mixBernoulli(test02,m3,p3);
    Prs(5)=N(5)*mixBernoulli(test02,m4,p4);
    Prs(6)=N(6)*mixBernoulli(test02,m5,p5);
    Prs(7)=N(7)*mixBernoulli(test02,m6,p6);
    Prs(8)=N(8)*mixBernoulli(test02,m7,p7);
    Prs(9)=N(9)*mixBernoulli(test02,m8,p8);
    Prs(10)=N(10)*mixBernoulli(test02,m9,p9);
    [~,I]=max(Prs);
    if(I==2)
        count=count+1;
    end  
end

testDataz=testDataz+size(test1,1);

for n=1:size(test2,1)
    Prs=zeros(1,10);
    test02=double(test2(n,:));
    Prs(1)=N(1)*mixBernoulli(test02,m0,p0);
    Prs(2)=N(2)*mixBernoulli(test02,m1,p1);
    Prs(3)=N(3)*mixBernoulli(test02,m2,p2);
    Prs(4)=N(4)*mixBernoulli(test02,m3,p3);
    Prs(5)=N(5)*mixBernoulli(test02,m4,p4);
    Prs(6)=N(6)*mixBernoulli(test02,m5,p5);
    Prs(7)=N(7)*mixBernoulli(test02,m6,p6);
    Prs(8)=N(8)*mixBernoulli(test02,m7,p7);
    Prs(9)=N(9)*mixBernoulli(test02,m8,p8);
    Prs(10)=N(10)*mixBernoulli(test02,m9,p9);
    [~,I]=max(Prs);
    if(I==3)
        count=count+1;
    end  
end

testDataz=testDataz+size(test2,1);

for n=1:size(test3,1)
    Prs=zeros(1,10);
    test02=double(test3(n,:));
    Prs(1)=N(1)*mixBernoulli(test02,m0,p0);
    Prs(2)=N(2)*mixBernoulli(test02,m1,p1);
    Prs(3)=N(3)*mixBernoulli(test02,m2,p2);
    Prs(4)=N(4)*mixBernoulli(test02,m3,p3);
    Prs(5)=N(5)*mixBernoulli(test02,m4,p4);
    Prs(6)=N(6)*mixBernoulli(test02,m5,p5);
    Prs(7)=N(7)*mixBernoulli(test02,m6,p6);
    Prs(8)=N(8)*mixBernoulli(test02,m7,p7);
    Prs(9)=N(9)*mixBernoulli(test02,m8,p8);
    Prs(10)=N(10)*mixBernoulli(test02,m9,p9);
    [~,I]=max(Prs);
    if(I==4)
        count=count+1;
    end  
end

testDataz=testDataz+size(test3,1);

for n=1:size(test4,1)
    Prs=zeros(1,10);
    test02=double(test4(n,:));
    Prs(1)=N(1)*mixBernoulli(test02,m0,p0);
    Prs(2)=N(2)*mixBernoulli(test02,m1,p1);
    Prs(3)=N(3)*mixBernoulli(test02,m2,p2);
    Prs(4)=N(4)*mixBernoulli(test02,m3,p3);
    Prs(5)=N(5)*mixBernoulli(test02,m4,p4);
    Prs(6)=N(6)*mixBernoulli(test02,m5,p5);
    Prs(7)=N(7)*mixBernoulli(test02,m6,p6);
    Prs(8)=N(8)*mixBernoulli(test02,m7,p7);
    Prs(9)=N(9)*mixBernoulli(test02,m8,p8);
    Prs(10)=N(10)*mixBernoulli(test02,m9,p9);
    [~,I]=max(Prs);
    if(I==5)
        count=count+1;
    end  
end

testDataz=testDataz+size(test4,1);

for n=1:size(test5,1)
    Prs=zeros(1,10);
    test02=double(test5(n,:));
    Prs(1)=N(1)*mixBernoulli(test02,m0,p0);
    Prs(2)=N(2)*mixBernoulli(test02,m1,p1);
    Prs(3)=N(3)*mixBernoulli(test02,m2,p2);
    Prs(4)=N(4)*mixBernoulli(test02,m3,p3);
    Prs(5)=N(5)*mixBernoulli(test02,m4,p4);
    Prs(6)=N(6)*mixBernoulli(test02,m5,p5);
    Prs(7)=N(7)*mixBernoulli(test02,m6,p6);
    Prs(8)=N(8)*mixBernoulli(test02,m7,p7);
    Prs(9)=N(9)*mixBernoulli(test02,m8,p8);
    Prs(10)=N(10)*mixBernoulli(test02,m9,p9);
    [~,I]=max(Prs);
    if(I==6)
        count=count+1;
    end  
end

testDataz=testDataz+size(test5,1);

for n=1:size(test6,1)
    Prs=zeros(1,10);
    test02=double(test6(n,:));
    Prs(1)=N(1)*mixBernoulli(test02,m0,p0);
    Prs(2)=N(2)*mixBernoulli(test02,m1,p1);
    Prs(3)=N(3)*mixBernoulli(test02,m2,p2);
    Prs(4)=N(4)*mixBernoulli(test02,m3,p3);
    Prs(5)=N(5)*mixBernoulli(test02,m4,p4);
    Prs(6)=N(6)*mixBernoulli(test02,m5,p5);
    Prs(7)=N(7)*mixBernoulli(test02,m6,p6);
    Prs(8)=N(8)*mixBernoulli(test02,m7,p7);
    Prs(9)=N(9)*mixBernoulli(test02,m8,p8);
    Prs(10)=N(10)*mixBernoulli(test02,m9,p9);
    [~,I]=max(Prs);
    if(I==7)
        count=count+1;
    end  
end

testDataz=testDataz+size(test6,1);

for n=1:size(test7,1)
    Prs=zeros(1,10);
    test02=double(test7(n,:));
    Prs(1)=N(1)*mixBernoulli(test02,m0,p0);
    Prs(2)=N(2)*mixBernoulli(test02,m1,p1);
    Prs(3)=N(3)*mixBernoulli(test02,m2,p2);
    Prs(4)=N(4)*mixBernoulli(test02,m3,p3);
    Prs(5)=N(5)*mixBernoulli(test02,m4,p4);
    Prs(6)=N(6)*mixBernoulli(test02,m5,p5);
    Prs(7)=N(7)*mixBernoulli(test02,m6,p6);
    Prs(8)=N(8)*mixBernoulli(test02,m7,p7);
    Prs(9)=N(9)*mixBernoulli(test02,m8,p8);
    Prs(10)=N(10)*mixBernoulli(test02,m9,p9);
    [~,I]=max(Prs);
    if(I==8)
        count=count+1;
    end  
end

testDataz=testDataz+size(test7,1);

for n=1:size(test8,1)
    Prs=zeros(1,10);
    test02=double(test8(n,:));
    Prs(1)=N(1)*mixBernoulli(test02,m0,p0);
    Prs(2)=N(2)*mixBernoulli(test02,m1,p1);
    Prs(3)=N(3)*mixBernoulli(test02,m2,p2);
    Prs(4)=N(4)*mixBernoulli(test02,m3,p3);
    Prs(5)=N(5)*mixBernoulli(test02,m4,p4);
    Prs(6)=N(6)*mixBernoulli(test02,m5,p5);
    Prs(7)=N(7)*mixBernoulli(test02,m6,p6);
    Prs(8)=N(8)*mixBernoulli(test02,m7,p7);
    Prs(9)=N(9)*mixBernoulli(test02,m8,p8);
    Prs(10)=N(10)*mixBernoulli(test02,m9,p9);
    [~,I]=max(Prs);
    if(I==9)
        count=count+1;
    end  
end

testDataz=testDataz+size(test8,1);

for n=1:size(test9,1)
    Prs=zeros(1,10);
    test02=double(test9(n,:));
    Prs(1)=N(1)*mixBernoulli(test02,m0,p0);
    Prs(2)=N(2)*mixBernoulli(test02,m1,p1);
    Prs(3)=N(3)*mixBernoulli(test02,m2,p2);
    Prs(4)=N(4)*mixBernoulli(test02,m3,p3);
    Prs(5)=N(5)*mixBernoulli(test02,m4,p4);
    Prs(6)=N(6)*mixBernoulli(test02,m5,p5);
    Prs(7)=N(7)*mixBernoulli(test02,m6,p6);
    Prs(8)=N(8)*mixBernoulli(test02,m7,p7);
    Prs(9)=N(9)*mixBernoulli(test02,m8,p8);
    Prs(10)=N(10)*mixBernoulli(test02,m9,p9);
    [~,I]=max(Prs);
    if(I==10)
        count=count+1;
    end  
end
toc
testDataz=testDataz+size(test9,1);

1-(count/testDataz)
