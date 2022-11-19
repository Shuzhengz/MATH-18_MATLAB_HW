# MATLAB HW 4


## Exercise 4.1

a.

- $det(A+B) = 0$
- $det(A-B) = 1038$
- $det(AB) = 3648$
- $det(A^{-1}) \approx 0.0132$
- $det(B^T) = 48$

```Matlab
>> A = [8 11 2 8;
0 -7 2 -1;
-3 -7 2 1;
1 1 2 4;]

A =

     8    11     2     8
     0    -7     2    -1
    -3    -7     2     1
     1     1     2     4

>> B = [1 -2 0 5;
0 7 1 5;
0 4 4 0;
0 0 0 2;]

B =

     1    -2     0     5
     0     7     1     5
     0     4     4     0
     0     0     0     2

>> det(A+B)

ans =

     0
     
>> det(A-B)

ans =

        1038

>> det(A*B)

ans =

   3.6480e+03
```

(which is 3648, which is $76 \cdot 48$)

```Matlab
>> det(A^-1)

ans =

    0.0132

>> det(B')

ans =

    48
```

<br></br>

b.

I don't think $A+B$ is invertible, because the determinant of the matrix is 0

The theorem states that _a square matrix is invertible if and only if the determinant is not equal to zero_.

<br/><br/>

c.

You can still calculate the determinant of $AB$, $A^{-1}$, and $B^T$ knowing the 
determinants of $A$ and $B$

- $det(AB) = det(A) \cdot det(B) = 76 \cdot 48 = 3648$
- $det(A^{-1}) = det(A)^{-1} = \frac{1}{76} \approx 0.0132$
- $det(B^T) = det(B) = 48$


<br/><br/>

## Exercise 4.2

```Matlab
>> N = [0.003 0.02 0;
0.1 1 0;
0 0 0.015;]

N =

    0.0030    0.0200         0
    0.1000    1.0000         0
         0         0    0.0150

>> detN100 = det(N^100) 

detN100 =

 -1.7211e-201
```

I think $N^{100}$ is invertible, because its determinant is not 0

```Matlab
>> det(N)

ans =

   1.5000e-05
```

Ding the determinant of $N^{100}$ by hand I got the value of 0, because the last row is all zeros. 
But I still think $N^{100}$ is invertible, because the 0 at column 3 of row 3 is not 
actually a zero, but instead a number so small that the calculator just sees it as a zero. 

Also, $N$ is invertible, so that would mean that $N^{100}$ is also invertible.

<br/><br/>

## Exercise 4.3

a.

```Matlab
>> V = [-8 6 -6 -30; 3 9 12 -10; 3 -6 -1 18; 3 0 4 7]

V =

    -8     6    -6   -30
     3     9    12   -10
     3    -6    -1    18
     3     0     4     7

>> [P,D] = eig(V)

P =

   -0.8874    0.8660    0.0605    0.8706
    0.2662   -0.2887    0.8812    0.0725
    0.2662   -0.2887   -0.4036   -0.4353
    0.2662   -0.2887    0.2388   -0.2176


D =

    1.0000         0         0         0
         0    2.0000         0         0
         0         0    1.0000         0
         0         0         0    3.0000
```

<br></br>

b.

$V$ should be invertible, since none of the eigenvalues are zero

<br></br>

c.

```Matlab
>> x = P^-1 * V * P

x =

    1.0000    0.0000    0.0000    0.0000
   -0.0000    2.0000   -0.0000    0.0000
    0.0000   -0.0000    1.0000   -0.0000
   -0.0000    0.0000    0.0000    3.0000
```

It seems like the value is approx. equal to $D$

<br/><br/>

## Exercise 4.4

a.

```Matlab
>> F = [0 1; 1 1]

F =

     0     1
     1     1

>> [P,D] = eig(F)

P =

   -0.8507    0.5257
    0.5257    0.8507


D =

   -0.6180         0
         0    1.6180

>> P * D * P^-1

ans =

   -0.0000    1.0000
    1.0000    1.0000
```

b.

```Matlab
>> F^10

ans =

    34    55
    55    89

>> P * D^10 * P^-1

ans =

   34.0000   55.0000
   55.0000   89.0000
```

$F^{10}$ does have the same value as $P D^{10} P^{-1}$

<br></br>

c.

It seems to follow a Fibonacci sequence, where the first value of each matrix equals to 
the last value of the last matrix, and the second value is the sum of the two values of 
the previous matrix.

<br></br>

d.

```Matlab
>> F^29 * f

ans =

      832040
     1346269
```

$f_{30}$ is $134269$, the second value of the 29th sequence

<br/><br/>

## Exercise 4.5

a.

```Matlab
>> P = [0.8100 0.0800 0.1600 0.1000;
0.0900 0.8400 0.0500 0.0800;
0.0600 0.0400 0.7400 0.0400;
0.0400 0.0400 0.0500 0.7800]

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

>> [Q,D] = eig(P)

Q =

    0.6656    0.7676    0.5432   -0.4641
    0.6165   -0.2841   -0.8148   -0.1254
    0.2946   -0.5682    0.1811   -0.2508
    0.3001    0.0848    0.0905    0.8402


D =

    1.0000         0         0         0
         0    0.6730         0         0
         0         0    0.7600         0
         0         0         0    0.7370

>> Q * D * Q^-1

ans =

    0.8100    0.0800    0.1600    0.1000
    0.0900    0.8400    0.0500    0.0800
    0.0600    0.0400    0.7400    0.0400
    0.0400    0.0400    0.0500    0.7800
```

<br></br>

b.

$L = \begin{bmatrix}1 & 0 & 0 & 0\\0 & 0 & 0 & 0\\0 & 0 & 0 & 0\\0 & 0 & 0 & 0\end{bmatrix}$

<br></br>

c.

```Matlab
>> L = [1 0 0 0;
0 0 0 0;
0 0 0 0;
0 0 0 0]

L =

     1     0     0     0
     0     0     0     0
     0     0     0     0
     0     0     0     0

>> Pinf = Q * L * Q^-1

Pinf =

    0.3547    0.3547    0.3547    0.3547
    0.3285    0.3285    0.3285    0.3285
    0.1570    0.1570    0.1570    0.1570
    0.1599    0.1599    0.1599    0.1599
```

<br></br>

d.

```Matlab
>> Pinf * x0

ans =

    0.3547
    0.3285
    0.1570
    0.1599
```

The result is the exact same as my answer from the last lab

<br></br>

e.
```Matlab
>> y = [0.25; 0.25; 0.25; 0.25]

y =

    0.2500
    0.2500
    0.2500
    0.2500

>> Pinf * y

ans =

    0.3547
    0.3285
    0.1570
    0.1599
```
The result is identical to the previous result, so it seems like it doesn't matter what
the initial $x_{0}$ is, they will all end up the same as $n$ approaches infinity.

I think this is because every column of `Pinf` is identical, so the product between it
and any vector that adds up to $1$ will be identical to the columns.

<br/><br/>

## Exercise 4.6

a.

```Matlab
>> L = [0,0,0,0,1,0,0,0;
0,0,0,0,0,0,0,1;
0,1/2,0,0,0,0,1,0;
1/2,0,1/2,0,0,0,0,0;
0,0,1/2,0,0,1,0,0;
1/2,0,0,0,0,0,0,0;
0,1/2,0,0,0,0,0,0;
0,0,0,1,0,0,0,0;]

L =

         0         0         0         0    1.0000         0         0         0
         0         0         0         0         0         0         0    1.0000
         0    0.5000         0         0         0         0    1.0000         0
    0.5000         0    0.5000         0         0         0         0         0
         0         0    0.5000         0         0    1.0000         0         0
    0.5000         0         0         0         0         0         0         0
         0    0.5000         0         0         0         0         0         0
         0         0         0    1.0000         0         0         0         0

>> e0 = [1 1 1 1 1 1 1 1]'

e0 =

     1
     1
     1
     1
     1
     1
     1
     1

>> e10 = L^10 * e0

e10 =

    1.0625
    1.1250
    1.1875
    1.1250
    1.1719
    0.5781
    0.5938
    1.1562
```

Eh I will go with n as 30

```Matlab
>> L^30 * e0

ans =

    1.1449
    1.1441
    1.1423
    1.1422
    1.1424
    0.5706
    0.5713
    1.1423

>> L^31 * e0

ans =

    1.1424
    1.1423
    1.1433
    1.1436
    1.1417
    0.5725
    0.5721
    1.1422
```

<br></br>

b.

D and E have an edge going out pointing towards website C, 
and edges coming out of C points towards B and E
