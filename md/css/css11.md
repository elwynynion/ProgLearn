# CSS Paddings

The CSS **padding** properties are used to generate space around an element's content, inside of any defined borders.

With CSS, you have full control over the padding. There are properties for setting the padding for each side of an element (top, right, bottom, and left).

# Padding - Individual Sides

CSS has properties for specifying the padding for each side of an element:

- `padding-top`
- `padding-right`
- `padding-bottom`
- `padding-left`

All the padding properties can have the following values:

- **length** - specifies a padding in px, pt, cm, etc.
- % - specifies a padding in % of the width of the containing element
- **inherit** - specifies that the padding should be inherited from the parent element

**Note**: Negative values are not allowed.

Set different padding for all four sides of a <div> element:

```css
div {
 padding-top: 50px;
 padding-right: 30px;
 padding-bottom: 50px;
 padding-left: 80px;
}
```