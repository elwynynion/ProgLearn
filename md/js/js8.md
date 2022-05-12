## JavaScript Assignment Operators

Assignment operators assign values to JavaScript variables.

| Operator | Example | Same As |
| --- | --- | --- |
| = | x = y | x = y |
| += | x + = y | x = x + y |
| -= | x -= y | x = x + y |
| *= | x * = y | x = x - y |
| /= | x / = y | x = x * y |
| %= | x % = y | x = x % y |
| << = | x << = y | x = x % |
| >> = | x >>> = y | x = x << y |
| >>> = | x >> = y | x = x >> y |
| &= | x&=y | x = x >>> y |
| ^= | x^=y | x = x ^ y |
| ! = | x^=y | x = x | y |
| **= | x**=y | x = x ** y |

The `**=` operator is a part of [ECMAScript 2016](https://www.w3schools.com/js/js_2016.asp).

```jsx
<!DOCTYPE html>
<html>

<body>

    <h3> JavaScript Assignment Operators </h3>

    <p id="demo1"> </p>
    <p id="demo2"> </p>
    <p id="demo3"> </p>
    <p id="demo4"> </p>
    <p id="demo5"> </p>

    <script>
        var x = 12;
        var y = 7;

        x = 12;
        x += y;
        document.getElementById("demo1").innerHTML = "x + y  = " + x;

        x = 12;
        x -= y;
        document.getElementById("demo2").innerHTML = "x - y  = " + x;

        x = 12;
        x *= y;
        document.getElementById("demo3").innerHTML = "x * y  = " + x;

        x = 12;
        x /= y;
        document.getElementById("demo4").innerHTML = "x / y  = " + x;

        x = 12;
        x %= y;
        document.getElementById("demo5").innerHTML = "x % y  = " + x;
    </script>

</body>

</html>

Output:

JavaScript Assignment Operators
x + y = 19

x - y = 5

x * y = 84

x / y = 1.7142857142857142

x % y = 5
```