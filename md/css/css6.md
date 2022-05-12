# CSS Fonts

- The font-family property specifies the font for an element.

There are two types of font family names:

- **font-family**: a specific font family (like Times New Roman or Arial)

- **generic family**: a group of font families with a similar look (like Serif or Monospace)

- You can also use numerical values in pixels or ems to manipulate font size.
- The Font-style property is typically used to specify italic text.
- The font weight controls the boldness or thickness of the text. The values can be set as normal (default size), **bold, bolder,** and **lighter**.

```html
<html>
<head>
 <style>
  p.myFont {
   font-family: "Verdana", Times, serif;
   font-style: italic;
   font-size: 14px;
   font-weight: bold;
  }
 </style>
</head>
<body>
 <h1>CSS Fonts</h1>
 <p class="myFont"> This is a paragraph having some text. </p>
</body>
</html>
```

Output:

CSS Fonts

*This is a paragraph having some text.*
