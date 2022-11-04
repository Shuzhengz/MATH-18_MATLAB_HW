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