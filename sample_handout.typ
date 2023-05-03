#import "tufte-handout.typ": tufte_handout, margin_note
//#set page(flipped: true)

#show: doc => tufte_handout(title: "A sample handout", doc)

= Part 1

#lorem(20)
#margin_note[A note!]
#lorem(30)
#margin_note[#lorem(20)]
#lorem(20)

= Part 2

== Part 2.1

#lorem(20)
#margin_note([The student should be able to do this easily!])
#lorem(20)

== Part 2.2

#lorem(30)
