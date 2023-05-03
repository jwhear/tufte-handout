#import "tufte-handout.typ": tufte_handout, margin_note
//#set page(flipped: true)

#show: doc => tufte_handout(title: "A sample handout", doc)

= Part 1

#lorem(20)
#margin_note[#lorem(10)]
#lorem(30)
#margin_note(

    figure(caption: "important diagram",
    {
        stack(
            path(
                stroke: black,
                closed: true,
                (50pt, 0pt),
                (50pt, 50pt),
                (0pt, 50pt),
            ),
            line(
                stroke: red + 0.5pt,
                start: (50pt, 0pt),
                angle: 225deg,
                length: 36pt
            ),
            line(
                stroke: blue + 0.5pt,
                start: (0pt, 0pt),
                end: (0pt, -25pt)
            )
        )
    })
)
#lorem(20)

= Part 2

== Part 2.1

#lorem(20)
#margin_note([The student should be able to do this easily!])
#lorem(20)

== Part 2.2

#lorem(30)
