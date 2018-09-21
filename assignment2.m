% Olivia Masaitis
% Due September 13
% Chapters 1-3 Exercises

%% Chapter 1 Exercises

% 1.)
AtomicWeightOfCopper=63.55

% 2.)
myage=25
myage=myage-2
myage=myage+1

% 3.)
namelengthmax

% 4.)
WeightInPounds=115
WeightInOunces=1840
who
whos
clear WeightInOunces
who
whos

% 5.)
intmin('uint32')
intmax('uint32')
intmin('uint64')
intmax('uint64')

% 6.)
DoubleVariable=42.2
DoubleVariable=int32(DoubleVariable)
NewVariable=42

% 11.)
pounds=115
kilos=pounds/2.2

% 12.)
ftemp=75
ctemp=(ftemp-32)*5/9

% 13.)
mile=3
kilometer=mile*1.60934

% 14.)
sind(90)
sin(1.570797)

% 15.)
R1=1
R2=2
R3=3
RT=1/((1/R1)+(1/R2)+(1/R3))

% 22.)uppercase
numequiv=double('a')
numequiv=double('A')

% 24.)
'b'>='c'-1
%logocal 1 which = true
3==2+1
%logical 1 which = true
(3==2)+1
%logical 1 which = true
xor(5<6,8>4)
%logical 0 which = false

% 25.)
x=7
y=10
y=x+5 % x>5, y<10, only one can be true

% 26.)
3*10^5==3e5

% 27.)
log10(10000)==4

%% Chapter 2 Exercises
% 1.)
RowVector1=2:7
RowVector2=1.1:+.2:1.7
RowVector3=8:-2:2

% 2.)
vec=linspace(0, 2*pi, 50)

% 3.)
linspace(2, 3, 6)

% 4.)
linspace(-5,-1,5)
5:2:9
8:-2:4

% 6.)
Row=-1:.5:1
Column=Row'

% 7.)
A=1:1:10
oddidx=A(1:2:end)
B=0:1:10
oddidx=B(1:2:end)

% 8.)
mat=[7 8 9 10; 12 10 8 6]
mat(1,3)
mat(2,:)
mat(:,1:2)

% 9.)
size mat
length mat

% 10.)
mat(1,:)=1:4
mat(:,3)=4

% 12.)
rows=randi([1,5],1)
cols=randi([1,5],1)
zeros(4,2)

% 23.)
A=3:2:11
sum(A)

% 26.)
numerators=3:2:9
denominators=1:4
sum(numerators./denominators)

% 30.)
RandomFiveIntegers=randi([-10,10],1,5)
RandomFiveIntegers-3
size(RandomFiveIntegers(RandomFiveIntegers>0))
abs(RandomFiveIntegers)
max(RandomFiveIntegers)

% 31.)
Matrix=randi([0,10],3,5)
max(Matrix')
max(Matrix)
max(max(Matrix))

%% Chapter 3 Exercises
% 1.)
ro=5
ri=3
spherevolume=((4*pi)/3)*((ro^3)-(ri^3))

% 4.)
vec=input('Enter vector here: ')
matrix=[input('enter vector 1: ') input('enter vector 2: ') input('enter vector 3: ')]
    
% 6.)
fprintf 12345.6789\n
fprintf('%10.4f\n', 12345.6789)
fprintf('%10.2f\n', 12345.6789)
fprintf('%6.4f\n', 12345.6789)
fprintf('%2.4f\n', 12345.6789)

% 8.)

% 13.)


