#import "../util/style.typ":font_family,font_size

#let index = [
  #set align(center)
  #set text(font: font_family.heiti, size: font_size.xiao_san)
  #set block(spacing: 0.9em)
  目#h(2em)录\
  #set text(font: font_family.songti, size: font_size.xiao_si)
  #set par(leading: 0.9em)
  #outline(title: none, indent: auto)
  #pagebreak(weak: true)
]
