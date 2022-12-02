# MATLAB HW 5


## Exercise 5.1

a.


The maximum number of non-zero orthogonal vectors possible in $\mathbb{R}^{3}$ is 3, since there are only 3 dimensions.

For $\mathbb{R}^{n}$ there can be $n$ non-zero orthogonal vectors, since to have a higher count of orthogonal vecors, you need to add more dimensions into each vector

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

<br/><br/>

## Exercise 5.2

a.

```Matlab
>> W'*W

ans =

    1.0000         0         0
         0    1.0000         0
         0         0    1.0000
```
This is a $3 \times 3$ identity matrix, and we should expect this result because we just took the dot product of two orthogonal matrixes with each vector being a unit vector

<br/><br/>

b.

```Matlab
>> norm(b)

ans =

    3.6056

>> norm(W*b)

ans =

    3.6056
```

Multiplying b and W when computing the norm does not affect the result because the 
normalization of W is 1

```Matlab
>> dot(a,b)

ans =

     2

>> dot(W*a, W*b)

ans =

     2
```

The same can be seen for these two

<br></br>

c.

```Matlab
>> invW = inv(W)

invW =

    0.8847    0.1474   -0.4423
    0.4472         0    0.8944
    0.1319   -0.9891   -0.0659

>> WT = W'

WT =

    0.8847    0.1474   -0.4423
    0.4472         0    0.8944
    0.1319   -0.9891   -0.0659
```

They are identical

<br/><br/>

## Exercise 5.3

<img src="https://mathweb.ucsd.edu/~math18m/Lab5-Files/projection.gif"
     alt="Projection picture"
     style="text-align:center; margin-left: 100px;" />

a.

```Matlab
>> v = [2; 0; -1];
>> w = [1; 3; 3];
>> vbar = (dot(v, w)/dot(w, w))*w

vbar =

   -0.0526
   -0.1579
   -0.1579

>> z = v - vbar

z =

    2.0526
    0.1579
   -0.8421

>> vbar + z

ans =

     2
     0
    -1
```

b.

```Matlab
>> dot(vbar, z)

ans =

  -2.7756e-17
```

The number is so small that it can be seen as zero, due to the tiny amount of error 
Matlab has, so therefore they are orthogonal

<br/><br/>

## Exercise 5.4

``` Matlab
>> x = [6; 1; -3];
>> y = [1; 0; 2];
>> v = [3 3 3]'

v =

     3
     3
     3

>> projvx = (dot(v, x)/dot(x, x))*x

projvx =

    1.5652
    0.2609
   -0.7826

>> projvy = (dot(v, y)/dot(y, y))*y

projvy =

    1.8000
         0
    3.6000

>> vbar = projvx + projvy

vbar =

    3.3652
    0.2609
    2.8174
```