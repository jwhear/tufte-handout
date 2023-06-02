Provides a template for Tufte-style handouts modeled on the [Tufte-LaTeX](https://github.com/Tufte-LaTeX/tufte-latex) project.
The key feature of this template is the `margin-note` function whichs renders content in the right margin area.

## Preview
### Portrait
![portrait preview](images/preview_portrait.png)

### Landscape
![lanscape preview](images/preview_landscape.png)

## Usage
* No images or other assets required, just grab the `tufte-handout.typ` file
* The template will attempt to use the "TeX Gyre Pagella" font if installed but the default font looks pretty good as well.

```typst
// Assumes you've cloned tufte-handout in this directory
#import "tufte-handout/tufte-handout.typ": template, margin-note
#show: doc => template(title: "A sample handout", doc)

= Part 1

#lorem(20)
#margin-note[A note!]
#lorem(30)
#margin-note[#lorem(20)]
#lorem(20)
```
