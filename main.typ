#import "template.typ": *
#import "cits.typ": mk_footnote, render_bibliography, statutory_text, block_quote
#import "foreword.typ"
#import "intro.typ"
#import "glossary.typ"
#import "wash_sales.typ"
#import "personal_casualty_losses.typ"
#import "abandonment.typ"
#import "pilgrims_pride.typ"
#import "acknowledgments.typ"

#set heading(numbering: "1.")

#show: project.with(
  title: "Taxing Digital Asset Losses",
  authors: (
    (name: "Chris Bailey", email: "chrisbailey1@fastmail.com", affiliation: "University of Illinois College of Law"),
  ),
)

#outline(indent:true)

#foreword

#intro

#glossary

#wash_sales

#abandonment

#pilgrims_pride

#personal_casualty_losses

#acknowledgments

= Bibliography
#set par(justify: false)

#render_bibliography()

