# MATLAB HW 5


## Exercise 5.1

a.

```Matlab
>> v = [2; 0; -1]

v =

     2
     0
    -1

>> w = [1; 3; 3]

w =

     1
     3
     3

>> x = [6; 1; -3]

x =

     6
     1
    -3

>> y = [1; 0; 2]

y =

     1
     0
     2

>> z = [2; -15; -1]

z =

     2
   -15
    -1

>> dot(v, y)

ans =

     0

>> dot(w, x)

ans =

     0

>> dot(x, y)

ans =

     0

>> dot(x, z)

ans =

     0


>> dot(y, z)

ans =

     0
```

Those are all the orthogonal sets, producing {$v, y$}, {$w, x$}, and {$x, y, z$}

The maximum number of non-zero orthogonal vectors possible in $\mathbb{R}^{3}$ is 3, since there are only 3 dimensions.

For $\mathbb{R}^{n}$ there can be $n$ non-zero orthogonal vectors, since to have a higher count of orthogonal vecors, you need to add more dimensions into each vector

b.

```Matlab
>> X = x/norm(x)

X =

    0.8847
    0.1474
   -0.4423

>> Y = y/norm(y)

Y =

    0.4472
         0
    0.8944

>> Z = z/norm(z)

Z =

    0.1319
   -0.9891

>> W = [X Y Z]

W =

    0.8847    0.4472    0.1319
    0.1474         0   -0.9891
   -0.4423    0.8944   -0.0659
```
