#let font_size = (
  chu: 42pt, xiao_chu: 36pt, yi: 26pt, xiao_yi: 24pt,
  er: 22pt, xiao_er: 18pt, san: 16pt, xiao_san: 15pt,
  si: 14pt, xiao_si: 12pt, wu: 10.5pt, xiao_wu: 9pt,
  liu: 7.5pt, xiao_liu: 6.5pt, qi: 5.5pt, xiao_qi: 5pt,
)

#let font_family = (
  songti_bold: (
    "Times New Roman", "Source Han Serif SC", "Source Han Serif", "Noto Serif CJK SC",
    "SimSun", "Songti SC", "STSongti",
  ), songti: ("Times New Roman", "SimSun"), heiti: (
    "Times New Roman", "Source Han Sans SC", "Source Han Sans", "Noto Sans CJK SC",
    "SimHei", "Heiti SC", "STHeiti",
  ), huawen_xihei: (
    "Times New Roman", "Source Han Sans SC", "Source Han Sans", "Noto Sans CJK SC",
    "SimHei", "Heiti SC", "STHeiti",
  ),
  huawen_xingkai: ("Times New Roman", "STXingkai"),
)

#let vspacer(n, size: 12pt)=[
  #set text(font: font_family.songti, size: size)
  #for i in range(0, n + 1){
    linebreak(justify: true)
  }
]
