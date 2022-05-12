# CSS Rules and Selectors
## A. Type Selectors

- The most common and easy to understand selectors are **type selectors**. This selector targets element types on the
- For example, to target all the paragraphs on the page:
    
```css
P {
  color: red; 
  font-size:130%;
}
```
    

# B. ID and Class Selectors

- **ID selectors** allow you to style an HTML element that has an **ID** attribute, regardless of their position in the document tree.

Examples:

- **The HTML:**

```html
<DIV ID="intro">
  <P>This paragraph is in the intro section.</P>
</DIV>
<P>This paragraph is not in the intro section.</P>
```

- **The CSS:**
    
```css
#intro {
 color: white;
 background-color: gray;
}
```
    
- **Class selectors** work similarly The major difference is that IDs can only be applied once per page, while classes can be used as many times on a page as needed.

In the examples below, both paragraphs having the class “first” will be affected by the CSS:

- **The HTML:**

```html
<DIV>
 <P CLASS="first">This is a paragraph</P>
 <P>This is the second paragraph. </P>
</DIV>
<P CLASS="first">This is not intro section</P>
<P>The second paragraph is not in the intro section.</P>
```

- **The CSS:**

```css
.first {font-size: 200%}
```

# C. Descendant Selectors

- These selectors are used to select elements that are descendants of another element. When selecting levels, you can select as many levels deep as you need to.
- For example, to target only <EM> elements in the first paragraph of the “intro” section:
- **The HTML:**

```html
<DIV ID="intro">
 <P CLASS="first">This is a <EM>paragraph</EM></P>
 <P>This is the second paragraph. </P>
</DIV>
<P  CLASS="first">This is not intro section</P>
<P>The second paragraph is not in the intro section.</P>
```

- **The CSS:**

```css
#intro .first em {
 color: pink;
 background-color: gray;
}
```