#import "../util/style.typ":font_size,font_family,vspacer
#import "../util/functions.typ":invisible_heading

#let chinese_abstract(content, keywords)={
  if content != none {
    set align(center)
    set text(font: font_family.heiti, size: font_size.xiao_san)
    set par(leading: 0.6em)
    [摘#h(2em)要\
      \
    ]
    invisible_heading[摘#h(2em)要]

    set align(left)
    set text(font: font_family.songti, size: font_size.xiao_si)
    set par(leading: 0.95em, first-line-indent: 2em, justify: false)
    set block(spacing: 0.95em)
    content + v(1.25em) + h(-2em)
    set text(font: font_family.heiti, size: font_size.xiao_si, weight: "bold")
    [关键词：#keywords.join("；")]
  }
}

#let english_abstract(title, content, keywords)={
  if content != none {
    set align(center)
    set text(font: font_family.songti, size: font_size.xiao_san, weight: "regular")
    set par(leading: 1.3em)
    [*#title*\
      \
    ]
    set par(leading: 2em)
    [Abstract]
    v(16pt)
    invisible_heading[Abstract]

    set block(spacing: 0.95em)
    set align(left)
    set text(font: font_family.songti, size: font_size.xiao_si)
    set par(leading: 0.95em, first-line-indent: 2em, justify: true)
    [#content\
      \
    ]
    set text(font: font_family.heiti, size: font_size.xiao_si, weight: "bold")
    set par(leading: -0.3em)
    linebreak()
    [Key Words：#keywords.join("；")]
  }
}

#let abstract(
  chinese_content, chinese_keywords, english_title, english_content,
  english_keywords,
)=[
  #chinese_abstract(chinese_content, chinese_keywords)
  #pagebreak(weak: true)
  #english_abstract(english_title, english_content, english_keywords)
  #pagebreak(weak: true)
]
