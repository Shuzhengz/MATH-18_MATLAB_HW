# MATLAB HW 3


## Exercise 3.1

a.
```Matlab
>> inv([1 1; 100 100])
Warning: Matrix is singular to working precision. 
 

ans =

   Inf   Inf
   Inf   Inf
```

b.

```Matlab
>> A = [5 3; 7 4]

A =

     5     3
     7     4

>> B = inv(A)

B =

   -4.0000    3.0000
    7.0000   -5.0000

>> A*B

ans =

    1.0000         0
         0    1.0000

>> B*A

ans =

    1.0000         0
   -0.0000    1.0000
```

c.

```matlab
>> x = [2; 3]

x =

     2
     3

>> y = A*x

y =

    19
    26
```

d.

I should get the same value as vector `x` because `B` is the inverse of `A`

e.

```Matlab
>> c = B*y

c =

     2
     3
```

<br/><br/>

## Exercise 3.2

1. San Diego - Los Angeles - Tokyo - Manila
2. San Diego - Los Angeles - Shanghai - Manila
3. San Diego - Seattle - Los Angeles - Manila
4. San Diego - Seattle - Tokyo - Manila
5. San Diego - Seattle - Shanghai - Manila

<br/><br/>

## Exercise 3.3

a.

```Matlab
>> A = [0 1 0 0 0 1;
1 0 1 1 1 1;
0 1 0 1 1 1;
0 1 1 0 1 1;
0 0 1 1 0 0;
1 1 1 1 0 0]

A =

     0     1     0     0     0     1
     1     0     1     1     1     1
     0     1     0     1     1     1
     0     1     1     0     1     1
     0     0     1     1     0     0
     1     1     1     1     0     0

>> B = A^3

B =

     2     7     5     5     5     7
     7    10    12    12    10    11
     4    11     9    10     9    11
     4    11    10     9     9    11
     4     4     7     7     4     4
     7     9    12    12     7     8
```

$(A^3)_{15}$ = 5, matches my count in exercise 3.2

b.

Since Manila is the 5th entry and Seattle is the 6th, the total number of ways should be:

$\sum_{n = 1}^{4} (A^n)_{56}$


As `A` is already $A^1$ and `B` $A^3$,
```Matlab
>> C = A^4

C =

    14    19    24    24    17    19
    21    42    43    43    34    41
    22    34    41    40    30    34
    22    34    40    41    30    34
     8    22    19    19    18    22
    17    39    36    36    33    40

>> D = A^2

D =

     2     1     2     2     1     1
     1     4     3     3     2     3
     2     2     4     3     2     2
     2     2     3     4     2     2
     0     2     1     1     2     2
     1     3     2     2     3     4

>> x = A(5,6)+B(5,6)+C(5,6)+D(5,6)

x =

    28
```

<br/><br/>

## Exercise 3.4

a:

```Matlab
P =

    0.8100    0.0800    0.1600    0.1000
    0.0900    0.8400    0.0500    0.0800
    0.0600    0.0400    0.7400    0.0400
    0.0400    0.0400    0.0500    0.7800

>> x0 = [0.5106; 0.4720; 0.0075; 0.0099]

x0 =

    0.5106
    0.4720
    0.0075
    0.0099

>> THREE = P^3*x0

THREE =

    0.3926
    0.4007
    0.1099
    0.0968

>> SIX = P^6*x0

SIX =

    0.3617
    0.3629
    0.1418
    0.1336

>> TEN = P^10*x0

TEN =

    0.3540
    0.3407
    0.1534
    0.1518
```

b:

```Matlab
>> THIRTY = P^30*x0

THIRTY =

    0.3546
    0.3285
    0.1570
    0.1599

>> SIXTY = P^60*x0

SIXTY =

    0.3547
    0.3285
    0.1570
    0.1599

>> HUNDRED = P^100*x0

HUNDRED =

    0.3547
    0.3285
    0.1570
    0.1599
```

As $k$ gets bigger, the values of the distribution between political parties normalizes into a set value of

```Matlab
[0.3457; 0.2385; 0.1570; 0.1599]
```

given that the vector $X_{0}$ stays constant
