# Inline and Blocked Elements

- In HTML, most elements are defined as **block-level** or **inline**
- **Block-level elements** start from a new line. These elements basically start a new block of content within the document.
- **Inline elements** are normally displayed without line breaks. These elements usually alter the content, such as changing the type of the text, emphasis, background colors, etc.
- The **<DIV>** element is a block-level element that is often used as a container for other HTML elements:

```html
<HTML>
	<BODY>
	  <H1>Headline</H1>
	    <DIV STYLE="background-color:green; color:white; padding:20px;">
		    <P>Some paragraph text goes here.</P>
		    <P>Another paragraph goes here.</P>
      </DIV>
  </BODY>
</HTML>
```

- Similarly, the **<SPAN>** element is an inline element that is often used as a container for some text.

```html
<HTML>
	<BODY>
	  <H2>Some
	    <SPAN STYLE="color:red">Important</SPAN> Message</H2>
  </BODY>
</HTML>
```