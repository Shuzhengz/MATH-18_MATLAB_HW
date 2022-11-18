# MATLAB HW 4


## Exercise 4.1

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

(which is 3648, which is 76 * 48)

```Matlab
>> det(A^-1)

ans =

    0.0132

>> det(B')

ans =

    48
```