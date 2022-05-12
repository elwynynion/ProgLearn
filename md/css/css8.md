# CSS Height and Width

The `height` and `width` properties are used to set the height and width of an element.

The height and width properties do not include padding, borders, or margins. It sets the height/width of the area inside the padding, border, and margin of the element.

# CSS height and width Values

The `height` and `width` properties may have the following values:

- `auto` - This is default. The browser calculates the height and width
- `length` - Defines the height/width in px, cm etc.
- `%` - Defines the height/width in percent of the containing block
- `initial` - Sets the height/width to its default value
- `inherit` - The height/width will be inherited from its parent value

Example:

```html
<html>
<head>
<style>
div {
 height: 80px;
 max-height: 150px;
 width: 400px;
 max-width: 500px;
 border: 2px solid orange;
}
</style>
</head>

<body>
	<h2>CSS Height and Width Property</h2>
	<div>
		A div element having a height of 80px and a width of 400px.
	</div>
</body>
</html>

Output:

CSS Height and Width Property
A div element having a height of 80px and a width of 400px.
```