%AW: Looks good 0.95/1

% InClass1: some simple excerises to get started with MATLAB. Please complete by
% the second class. Answer questions in comments and return assignment via
% github
%% numbers vs strings
% Run the following two sections. explain why one gives a sensible result and the other doesn't
% Can you explain the value of the variable b? 
x = 1; 
y = x + x
%%
a = '1';
b = a+a
% First section includes the addition of numbers (x and y are both
% numbers), while in the second section, a is a character, and b %%%
%AW: looks like you didn't complete this thought...-.05

%% concatenation
% what is being done by the following statements? what is the difference between x2 and a2? 
% what is the difference between x2 and x2b (hint run the size command on
% these arrays and explain the results). 

x2 = [x x]

a2 = [a a]

x2b = [x; x]

%All of the above statements are concatenating.
%x2 is concatenating the two x's into a number array of dimension 1x2
%a2 is concatenating the two a's into a character array of dimension 1x2
%x2b is concatenating the two x's into a number array of dimension 2x1

%% = vs ==, isequal
% explain why the identical commands with the == commands give different answers 
% hint: check the values of a and b as you execute the following statements
% if necessary. 
a = 1; b =2; 

a == b
a = b;
a == b

%The first output is 0, because it is comparing a and b when a = 1 and b =
%2. Thus the output is 0, meaning that a and b does not equal
%The second output is 1, because it is comparing a and b when they both =
%2. The statment a = b swapps a = 1 with a = b = 2, and thus the output is
%1, meaning true, a and b are equal now. 


%explain the results of the following operations:
a = [1, 2, 4];
b = [0,2,7];
a == b
% This operation compares the items in a and b correspondingly. It compares
% whether 1 from a equals to 0 from b, and whether 2 from a equals to 2
% from b, and whether 4 from a equals to 7 from b. Thus the result is 0, 1,
% 0, which means only the second items from the two arrays are equal. 

%explain why this gives an error:

b = [2, 3];
a == b
% a and b have to be the same dimension in order to compare their elements. 
% a is a  1x3 matrix while b is a 1x2 matrix. Thus matlab cannot compare
% them.

%explain why this does not give an error
b = 2;
a == b 
% This operation compares b with every item in a, which gives 0 (does not
% equal to 1), 1(equals to 2), and 0 (does not equal to 4).

%%  : operator 
%(hint for the following type "help colon" at the command line to see
% how the ":" operator works
% the following makes an array of the numbers from one to ten: 
oneToTen = 1:10;

%here are two ways to make the array of numbers from 1 to twenty
%explain how the second line works.
1:20
Z = [oneToTen, oneToTen+10]
disp (Z)
%The second line concatenates the array [1,2,3,...,10] with a new array, 
%made by adding 10 to each of the item in the first array [1,2,3...10].
%Thus the second array would be [11,12,13,...,20]. Concatenating the two
%would give array of numbers from 1 to 20.


% do each of the following in two different ways, by manipulating the array
% oneToTen and by defining it concisely from scratch

% 1. even numbers from two to twenty
[2:2:20]
E = oneToTen*2


% 2. odd numbers from one to nineteen
[1:2:19]
O = oneToTen*2-1

% 3. Even numbers in reverse order from twenty to two (hint lookup the
% matlab function fliplr)
[20:-2:2]
R = fliplr(oneToTen*2)

% explain why the fliplr funciton no longer works and find a different
% matlab function that performs an equivalent function on the same array
oneToTen = oneToTen';
fliplr(oneToTen)
%The fliplr function no longer works because it flips a matrix in
%left/right direction, but the oneToTen matrix is now a column vector
%instead of a row vector. Thus we have to use flipud instead, which flips a
%matrix in the up/down direction. 
flipud(oneToTen)

%% matrices, . operator

%look at the matrix this defines. Note the other functions zeros, eye, and
%rand which can define matrices. 

m1 = ones(2);
m2 = 2*ones(2);

%explain the output of these two commands:
m1*m2
m1.*m2
% m1*m2 is matrix multiplication. [1,1;1,1] x [2,2;2,2], giving 4 for each 
% entry; while m1.*m2 is element-by-element multiplication, where every 
% entry would be 1x2=2, m2(1,1)*m1(1,1), m2(1,2)*m1(1,2), m2(2,1)*m1(2,1), 
% and m2(2,2)*m1(2,2). 

%explain this command:
m2./m1
% This is element-by-element division, where the entries are
% m2(1,1)/m1(1,1), m2(1,2)/m1(1,2), m2(2,1)/m1(2,1), and m2(2,2)/m1(2,2).

%extra credit: explain why this command gives a warning:
m2/m1
%Both matrices are singular, meaning they don't have inverses. Thus matrix 
%division cannot be done, and the problem cannot be solved.

%% access particular elements and groups of elements

%define a random matrix

rand_nums = rand(5);

%explain what is being done in each of the following lines

rand_nums(2,3)
%accessing the item on row 2, column 3

rand_nums(2:4,3)
%accessing the items from row 2 to row 4 on column 3

rand_nums(1:2,3:4)
%accessing the items from rows 1 and 2 on columns 3 and 4

rand_nums(:,2)
%accessing the items on column 2

rand_nums(1,:)
%accessing the items on row 1

rand_nums(:,[1 3 5])
%accessing the items on columns 1, 3, and 5

