#import "../util/style.typ":font_size,font_family,vspacer

#let header = [
  #vspacer(2)
  #set align(center)
  #set text(
    font: font_family.songti_bold, size: font_size.xiao_yi, weight: "medium",
  )
  大连理工大学本科毕业论文（设计）\
  #vspacer(1)
]

#let title(chinese_title, english_title)=[
  #set align(center)
  #set text(font: font_family.huawen_xihei, size: font_size.er, weight: "medium")
  #set par(leading: 0.8em)
  #chinese_title\
  #set text(font: font_family.huawen_xihei, size: font_size.san, weight: "bold")
  #english_title\
]

#let desc(faculty, major, name, id, sup, rev, date)=[
  #set align(center)
  #set text(font: font_family.songti, size: font_size.xiao_san)

  #let grid_v(content)=[
    #rect(width: 100%, inset: 2pt, stroke: (bottom: 0.5pt + black))[#content]
  ]

  #grid(
    columns: (100pt, 180pt), row-gutter: 1.1em, column-gutter: 0em, "学院（系）：",
    grid_v(faculty), "专          业：", grid_v(major), "学 生 姓名：",
    grid_v(name), "学          号：", grid_v(id), "指 导 教 师：",
    grid_v(sup), "评 阅 教 师：", grid_v(rev), "完 成 日 期：",
    grid_v(date),
  )
]

#let fonter = [
  #set align(center)
  #set text(font: font_family.huawen_xingkai, size: font_size.xiao_er)
  大连理工大学\
  #set text(font: font_family.huawen_xingkai, size: font_size.xiao_si)
  Dalian University of Technology\
]

#let cover(chinese_title, english_title, faculty, major, name, id, sup, rev, date) = [
  #set page(margin: (top: 3.5cm, bottom: 2.5cm, left: 0cm, right: 0cm))
  #header\
  #title(chinese_title, english_title)\
  #vspacer(9)
  #desc(faculty, major, name, id, sup, rev, date)\
  #vspacer(2, size: 18pt)
  #fonter
  #pagebreak(weak: true)
]

