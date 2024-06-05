#import "../util/style.typ":font_size,font_family,vspacer
#import "../util/functions.typ":invisible_heading

#let changelog(content)={
  if content != none {
    set align(center)
    set text(font: font_family.heiti, size: font_size.xiao_san)
    [修改记录]
    invisible_heading()[修改记录]
    v(-8pt)

    set align(left)
    set text(font: font_family.songti, size: font_size.xiao_si)
    set par(leading: 0.8em, justify: true, first-line-indent: 2em)
    set block(spacing: 0.8em)
    content
    vspacer(6)
    set align(right)
    let spacer = 20%
    [记录人（签字）：#h(spacer)\
      指导教师（签字）：#h(spacer)\
    ]
    pagebreak(weak: true)
  }
}
