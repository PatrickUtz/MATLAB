a = 2:10;
ans = a.^3;

a = [3 3 3 3 3 3 3 3 3]
b = a.^(2:10);
b

a = 1:10;
ans = a.^(10:-1:1);
ans

format long;
ans = 1./(((1:2:99).^2).*(2:2:100));
ans

format long;
c = linspace(1,1,500);
c(2:2:500) = (-1);
ans = c./(1:2:999);
ans

n = 10;
a = 3:2:((2*n)+2);
ans = sum(a);
ans

n = 10;
a = 1./(1:n);
ans = sum(a);
ans

n = 10;
a = 1./(2.^(0:(n-1)));
ans = sum(a);
ans

n = 10;
a = (3:2:((2*n)+2))./(1:n);
ans = sum(a);
ans

a = randi([50,100],1,20);
oddsReference = rem((a(1:end)),2);
evensReference = not(oddsReference);
oddsReference = not(evensReference); 
oddsTemp = a.*oddsReference;
evensTemp = a.*evensReference;
odds = oddsTemp(oddsTemp ~= 0); 
evens = evensTemp(evensTemp ~= 0);
odds 
evens 


vec = 1:10;
vec
testForOdd = logical(rem((numel(vec)),2));
testForOdd
firstHalf = vec( 1:( (( (numel(vec)) + testForOdd )/2) ) );
firstHalf
secondHalf = vec( ( (( (numel(vec)) + testForOdd )/2) + not(testForOdd):end) );
secondHalf 

A = randi([-8,8],4,4)
B = randi([-8,8],4,4)
A1 = A(1:2,1:2);
A2 = A(3:4,1:2);
A3 = A(1:2,3:4);
A4 = A(3:4,3:4);
B1 = B(1:2,1:2);
B2 = B(3:4,1:2);
B3 = B(1:2,3:4);
B4 = B(3:4,3:4);
A
B
A1
A2
A3
A4
B1
B2
B3
B4
sum = A + B
sum1 = (A1+B1);
sum2 = (A2+B2);
sum3 = (A3+B3);
sum4 = (A4+B4);
sumCon = zeros(4,4); 
sumCon(1:2,1:2) = sum1;
sumCon(3:4,1:2) = sum2;
sumCon(1:2,3:4) = sum3;
sumCon(3:4,3:4) = sum4;

sumCon

subt = A - B
subt1 = (A1-B1);
subt2 = (A2-B2);
subt3 = (A3-B3);
subt4 = (A4-B4);
subtCon = zeros(4,4); 
subtCon(1:2,1:2) = subt1;
subtCon(3:4,1:2) = subt2;
subtCon(1:2,3:4) = subt3;
subtCon(3:4,3:4) = subt4;

subtCon

scal = A*5
scal1 = (A1*5);
scal2 = (A2*5);
scal3 = (A3*5);
scal4 = (A4*5);
scalCon = zeros(4,4); 
scalCon(1:2,1:2) = scal1;
scalCon(3:4,1:2) = scal2;
scalCon(1:2,3:4) = scal3;
scalCon(3:4,3:4) = scal4;

scalCon


mult = A*B
part1A = zeros(2,4);
part1A(1:2,1:2) = A1;
part1A(1:2,3:4) = A3;
part1B = zeros(4,2);
part1B(1:2,1:2) = B1;
part1B(3:4,1:2) = B2;
part1mult = part1A*part1B;

part2A = zeros(2,4);
part2A(3:4,1:2) = A2;
part2A(3:4,3:4) = A4;
part2B = zeros(4,2);
part2B(1:2,1:2) = B1;
part2B(3:4,1:2) = B2;
part2mult = part2A*part2B;

part3A = zeros(2,4);
part3A(1:2,1:2) = A1;
part3A(1:2,3:4) = A3;
part3B = zeros(4,2);
part3B(1:2,3:4) = B3;
part3B(3:4,3:4) = B4;
part3mult = part3A*part3B;

part4A = zeros(2,4);
part4A(3:4,1:2) = A2;
part4A(3:4,3:4) = A4;
part4B = zeros(4,2);
part4B(1:2,3:4) = B3;
part4B(3:4,3:4) = B4;
part4mult = part4A*part4B;


multCon = part2mult; 
multCon(1:2,1:2) = part1mult;
multCon(1:2,3:4) = part3mult(1:2,3:4);
multCon(3:4,3:4) = part4mult(3:4,3:4);

multCon
