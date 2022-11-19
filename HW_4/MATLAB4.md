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

It seems like the value is equal to $D$