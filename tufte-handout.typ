// Size of the left "margin" (note area)
#let margin_size = 23.5%
// Spacer so that main content and notes don't rub up against each other
#let margin_space = 0.2in

// Call to insert a margin note containing `content`
//  `dy` can be used to adjust the note content vertically
#let margin_note(dy: -1em, content) = {
    place(
        right,
        dx: margin_size + margin_space,
        dy: dy,
        block(width: margin_size, {
            set text(size: 0.75em)
            set align(left)
            content
        })
    )
}

// Call to wrap `doc` in the handout layout
//  `title` will be rendered in the page header
#let tufte_handout(
    title: none,
    doc,
) = {

    set text(
        font: ("TeX Gyre Pagella")
    )

    set page(
        header: {
            set text(size: 7pt, weight: "semibold", tracking: 1.25pt)
            h(1fr)
            upper(title)
        }
    )

    show heading.where(level: 1): it => text(
        size: 12pt,
        weight: "extralight",
        style: "italic",
        {
            v(1em)
            it.body
        }
    )

    show heading.where(level: 2): it => text(
        size: 10pt,
        style: "italic",
        it.body
    )

    grid(
        columns: (100% - margin_size, margin_size),
        doc
    )
}
