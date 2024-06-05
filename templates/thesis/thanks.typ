#import "../util/style.typ":font_size,font_family,vspacer
#import "../util/functions.typ":invisible_heading

#let thanks(content)={
  if content != none {
    set align(center)
    set text(font: font_family.heiti, size: font_size.xiao_san)
    [致#h(2em)谢]
    invisible_heading[致#h(2em)谢]
    v(-14pt)

    set align(left)
    set text(font: font_family.songti, size: font_size.xiao_si)
    set par(leading: 0.9em, first-line-indent: 2em, justify: true)
    set block(spacing: 1em)
    content
    pagebreak(weak: true)
  }
}
