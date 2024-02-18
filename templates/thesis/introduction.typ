#import "../util/style.typ":font_family,font_size
#import "../util/functions.typ":invisible_heading

#let introduction(content)={
  if content != none {
    set align(center)
    set text(font: font_family.heiti, size: font_size.xiao_san)
    set par(leading: 0.7em)
    [引#h(2em)言 \
      \
    ]
    invisible_heading()[引#h(2em)言]

    set align(left)
    set text(font: font_family.songti, size: font_size.xiao_si)
    set par(leading: 0.9em, justify: false, first-line-indent: 2em)
    set block(spacing: 1em)
    content
    pagebreak(weak: true)
  }
}
