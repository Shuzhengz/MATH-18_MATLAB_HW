# MATLAB HW 1

Tom Zhang  
MATH18_FA22_B05  
PID: A17356676

<br/><br/>

## Exercise 1.1

1. MATHLAB homeworks are due at 11:59 p.m. on Fridays, with exception of Oct. 24th.
2. The quiz will be avalible from 0:00 AM PT on November 30th to 11:59 PT on Dec. 1st.
3. The quiz can be found on Canvas
4. There is no makeup quiz
5. Done

<br/><br/>

## Exercise 1.2

```Matlab
>> t = 20; o = 15; m = 13; z = 26; h = 8; a = 1; n = 14; g = 7;

g =

     7
```

```Matlab
>> tomzhang = t+o+m+z+h+a+n+g

tomzhang =

   104
```

<br/><br/>

## Exercise 1.3

Wrong Command:
```Matlab
>> z = 73 sin(pi/2)-(25-5*exp(2+sin(pi/3))

 z = 73 sin(pi/2)-(25-5*exp(2+sin(pi/3))
        ↑
Invalid expression. Check for missing multiplication operator, missing or unbalanced delimiters, or other syntax
error. To construct matrices, use brackets instead of parentheses.
```

Fix:

```Matlab
>> z = 73*sin(pi/2)-(25-5*exp(2+sin(pi/3)))

z =

  135.8353
```

<br/><br/>

## Exercise 1.4

Declare variables `s` and `t`
```Matlab
>> syms s t
```

Derivative with respect to `t`:
```Matlab
>> diff(log(2 + 2*s - sin(t)),t)

ans =
 
-cos(t)/(2*s - sin(t) + 2)
```

Derivative with respect to `s`:
```Matlab
>> diff(log(2 + 2*s - sin(t)),s)

ans =
 
2/(2*s - sin(t) + 2)
```

<br/><br/>

## Exercise 1.5

> `P = atan(Z)` returns the inverse tangent (arctangent) of the elements of Z. All angles are in radians.

``` Matlab
>> atan(1)

ans =

    0.7854
```

<br/><br/>

## Exercise 1.6

```Matlab
>> Fibonacci = [1, 1, 2, 3; 5, 8, 13, 21; 34, 55, 89, 144; 233, 377, 610, 987]

Fibonacci =

     1     1     2     3
     5     8    13    21
    34    55    89   144
   233   377   610   987
```

<br/><br/>

## Exercise 1.7

```Matlab
>> whatever_name_i_like = Fibonacci(1:2,3:4)

whatever_name_i_like =

     2     3
    13    21
```

<br/><br/>

## Exercise 1.8

``` Matlab
>> A = rand(4)

A =

    0.6324    0.9575    0.9572    0.4218
    0.0975    0.9649    0.4854    0.9157
    0.2785    0.1576    0.8003    0.7922
    0.5469    0.9706    0.1419    0.9595
```
``` Matlab
>> B = rand(4)

B =

    0.6557    0.6787    0.6555    0.2769
    0.0357    0.7577    0.1712    0.0462
    0.8491    0.7431    0.7060    0.0971
    0.9340    0.3922    0.0318    0.8235
```

Yes, I do expect them to be the same
``` Matlab
>> A + B == B + A

ans =

  4×4 logical array

   1   1   1   1
   1   1   1   1
   1   1   1   1
   1   1   1   1
```

Yes, they are in fact equal (0 means not equal and 1 means equal)
