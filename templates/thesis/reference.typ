#import "../util/style.typ":font_family,font_size
#import "../util/functions.typ":invisible_heading

#let reference(bib)={
  if bib != none {
    set align(center)
    set text(font: font_family.heiti, size: font_size.xiao_san)
    set par(leading: 1.5em)
    set block(spacing: 1.5em)
    [参 考 文 献]
    invisible_heading[参 考 文 献]

    set align(left)
    set text(font: font_family.songti, size: font_size.wu)
    set par(leading: 1em)
    set block(spacing: 1em)

    set bibliography(title: none, style: "gb-7714-2015-numeric", full: true)
    set text()
    bib
    pagebreak(weak: true)
  }
}
