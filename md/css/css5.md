# CSS Comments, Style Cascade and Inheritance

**A. Comments**

•  Comments are used to explain your code, and may help you when you edit the source code

•  Comments are ignored by browsers.

•  CSS comment syntax:

/* Comment goes here*/

- An example of using CSS Comment:

```css
P {
color: green;
/* This is a comment */
font-size: 150%;
}
```

**B. Cascade**

- The final appearance of a web page is a result of different styling
- The three (3) main sources of style information that form a cascade are:
    - The stylesheet created by the **author of the page**
    - The **Browser’s default styles**
    - Styles specified **by the user**

**C. Inheritance**

•  Inheritance refers to the way properties flow through the page. A child element will usually take on the characteristics of the parent element unless otherwise defined.

```html
<hmtl>
 <head>
  <style>
   Body {
	color: green;
	font-family: Arial;
   }
  </style>
 </head>
<body>
 <p> This is a text inside the paragraph.<p>
</body>
</html>
```