# MATLAB HW 2

<br/><br/>

## Exercise 2.1

Part a:

Solution by hand: $x_{1} = -20, x_{2} = -3, x_{3} = 7.5$

Matlab Input:

```Matlab
>> C = [2 1 6; 1 0 3; -3 2 -7]

C =

     2     1     6
     1     0     3
    -3     2    -7

>> d = [1; 2; 3]

d =

     1
     2
     3

>> x = C\d

x =

  -20.5000
   -3.0000
    7.5000
```

Part b:

```Matlab
>> C * x - d

ans =

     0
     0
     0
```

<br/><br/>

## Exercise 2.2

Matlab Input
```Matlab
>> C = [-10 5; 6 -3]

C =

   -10     5
     6    -3

>> d = [0; 0]

d =

     0
     0

>> x = C\d
Warning: Matrix is singular to working precision. 
 

x =

   NaN
   NaN
```
Reduced Echelon Form by hand:

$$
\begin{bmatrix}
1 & -0.5 & 0\\ 
0 & 0 & 0
\end{bmatrix}
$$ 

There is one free variable ($x_{2}$) in this augmented matrix

The error message is probably caused by the matrix not having a unique solution

<br/><br/>

## Exercise 2.3

```Matlab
>> C = [1 -3 2; -2 6 -4; 4 -12 8]

C =

     1    -3     2
    -2     6    -4
     4   -12     8

>> d = [0; 0; 0]

d =

     0
     0
     0

>> rref([C d])

ans =

     1    -3     2     0
     0     0     0     0
     0     0     0     0
```

2 free variables are required ($x_{2}$ and $x_{3}$)

<br/><br/>

## Exercise 2.4

Because everyone combined consumed everything of each category (everyone produced is consumed)

<br/><br/>

## Exercise 2.5

The left hand side of each equation represents the amount of things each person consumed, with the variables being the person who produced that good (f is food, t is cloths, c is housing, etc.)

The right hand side represents the total amount of money each person earns to be able to consume their stuff (f is farmer, t is tailor)

<br/><br/>

## Exercise 2.6

```Matlab
>> C = [0.25 0.15 0.25 0.18 0.20;
0.17 0.28 0.18 0.17 0.10;
0.22 0.19 0.22 0.22 0.10;
0.20 0.15 0.20 0.28 0.15;
0.16 0.23 0.15 0.15 0.45]

C =

    0.2500    0.1500    0.2500    0.1800    0.2000
    0.1700    0.2800    0.1800    0.1700    0.1000
    0.2200    0.1900    0.2200    0.2200    0.1000
    0.2000    0.1500    0.2000    0.2800    0.1500
    0.1600    0.2300    0.1500    0.1500    0.4500

>> I = eye(5)

I =

     1     0     0     0     0
     0     1     0     0     0
     0     0     1     0     0
     0     0     0     1     0
     0     0     0     0     1

>> d = [0; 0; 0; 0; 0;]

d =

     0
     0
     0
     0
     0

>> rref([C - I  d])

ans =

    1.0000         0         0         0   -0.8729         0
         0    1.0000         0         0   -0.7355         0
         0         0    1.0000         0   -0.7855         0
         0         0         0    1.0000   -0.8222         0
         0         0         0         0         0         0
```

General solution of $(C - I)p = 0$: <br/><br/>

$p$ = $\begin{bmatrix}f\\t\\c\\m\\b\end{bmatrix}$ = $b\begin{bmatrix}0.8729\\0.7355\\0.7855\\0.8222\\1\end{bmatrix}$

If Bob earns $40,000, then 

Tailor earns $29,420, Carpenter earns $31,420, and Miner earns $32,888, Farmer earns $34,916, and Bob earns $40,000, from lowest income to highest

<br/><br/>

## Exercise 2.7

Part a:
```Matlab
>> L = [0 1/2 0 0 1/3;
1/2 0 0 1/3 1/3;
0 1/2 0 1/3 0;
1/2 0 0 0 1/3;
0 0 1 1/3 0;]

L =

         0    0.5000         0         0    0.3333
    0.5000         0         0    0.3333    0.3333
         0    0.5000         0    0.3333         0
    0.5000         0         0         0    0.3333
         0         0    1.0000    0.3333         0
```

Part b:
``` Matlab
>> rref([L-eye(5)])

ans =

    1.0000         0         0         0   -0.8333
         0    1.0000         0         0   -1.0000
         0         0    1.0000         0   -0.7500
         0         0         0    1.0000   -0.7500
         0         0         0         0         0
```

Part c:

Solution for $(L - I)x = 0$:

$x$ = $\begin{bmatrix}A\\B\\C\\D\\E\end{bmatrix}$ = $E\begin{bmatrix}0.8333\\1.0000\\0.7500\\0.7500\\1\end{bmatrix}$

If D is 100%, then A is 83.33%, B is 100%, C is 75%, and D is also 75%; 

B = D > A > C = D, in decreasing order