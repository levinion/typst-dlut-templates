#import "../util/style.typ":font_size,font_family

#let header = [
  #set align(center)
  #set text(
    font: font_family.songti_bold, size: font_size.xiao_er, weight: "medium",
  )
  #v(3.5em)
  大 连 理 工 大 学 本 科 外 文 翻 译
]

#let title(chinese_title, english_title)=[
  #set align(center)
  #set text(font: font_family.songti, size: font_size.er)
  *#chinese_title*\
  #set text(font: font_family.songti, size: font_size.san)
  *#english_title*\
]

#let desc(faculty, major, name, id, teacher, date)=[
  #set align(center)
  #set text(font: font_family.songti, size: font_size.xiao_si)

  #let grid_v(content)=[
    #rect(width: 100%, inset: 2pt, stroke: (bottom: black))[#content]
  ]

  #grid(
    columns: (100pt, 180pt), row-gutter: 1.5em, column-gutter: -1em, "学部（院）：",
    grid_v(faculty), "专          业：", grid_v(major), "学 生 姓名：",
    grid_v(name), "学          号：", grid_v(id), "指 导 教 师：",
    grid_v(teacher), "完 成 日 期：", grid_v(date),
  )
]

#let fonter = [
  #set align(center)
  #set text(font: font_family.songti, size: font_size.xiao_si)
  大连理工大学
]

#let cover(chinese_title, english_title, faculty, major, name, id, sup, date) = [

  #set page(margin: (left: 2.5cm, right: 2.5cm))

  #header\
  #title(chinese_title, english_title)\
  #v(180pt)
  #desc(faculty, major, name, id, sup, date)
  #v(20pt)
  #fonter
  #pagebreak(weak:true)
]

