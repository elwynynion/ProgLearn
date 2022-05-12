# CSS Inline, Embedded, and External

**A. Inline CSS**

- Using an inline style is one of the ways to insert a style. With an inline style, a unique style is applied to a single element.
- In order to use an inline style, add the **style attribute** to the **relevant tag**.

Example:

```html
<P STYLE="color:white; background-color:gray">
	This is an example of inline styling.
</P>
```

**B. Embedded/Internal CSS**

- Internal styles are defined within the **`<STYLE>`** element, inside the **head** section of an HTML

Example:

```html
<HTML>
 <HEAD>
  <STYLE>
   P {
	color:white;
	background-color:gray;
   }
  </STYLE>
 </HEAD>
<BODY>
 <P>This is my first paragraph.</P>
 <P>This is my second paragraph.</P>
</BODY>
</HTML>
```

**C. External CSS**

- With this method, all styling rules are contained in a single text file, which is save with the **.css** extension.
- This CSS file is then referenced in the HTML using the **`<LINK>`**  The `<LINK>` element goes inside the head section.

Examples:

- **The HTML**

```html
<HEAD>
	<LINK REL="stylesheet" HREF="example.css">
</HEAD>
<BODY>
 <P>This is my first paragraph.</P>
 <P>This is my first paragraph.</P>
 <P>This is my first paragraph.</P>
</BODY>
```

- **The CSS**

```css
P {
 color:white;
 background-color:gray;
}
```