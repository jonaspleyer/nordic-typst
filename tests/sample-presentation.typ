#import "@preview/polylux:0.4.0": *
#import "../nordic.typ" as nordic
#show: nordic.default

#set page(paper: "presentation-16-9")
#set text(size: 25pt, font: "Lato")

#slide[
  #set align(horizon)
  = Very minimalist slides

  A lazy author

  December 27, 2025
]

#slide[
  == First Slide

  Some static text on this slide
]

#slide[
  == This slide changes!

  You can always see this.
  // Make use of features like #uncover, #only, and others to create dynamic content
  #uncover(2)[But this appears later!]
]
