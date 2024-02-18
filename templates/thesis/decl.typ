#import "../util/style.typ":font_family,font_size

#let decl()=[
  #set align(center)
  #set text(font: font_family.huawen_xihei, size: font_size.er, weight: "medium")
  #set par(leading: 1.25em)
  原创性声明\
  \

  #set align(left)
  #set text(font: font_family.songti, size: font_size.xiao_san, weight: "regular")
  #set par(first-line-indent: 2em, leading: 0.9em, justify: false)
  本人郑重声明：本人所呈交的毕业论文（设计），是在指导老师的指导下独立进行研究所取得的成果。毕业论文（设计）中凡引用他人已经发表或未发表的成果、数据、观点等，均已明确注明出处。除文中已经注明引用的内容外，不包含任何其他个人或集体已经发表或撰写过的科研成果。对本文的研究成果做出重要贡献的个人和集体，均已在文中以明确方式标明。\
  \
  本声明的法律责任由本人承担。 \
  \
  \
  作者签名：#h(30%) 日 期：
  #pagebreak()

  #set align(center)
  #set text(font: font_family.huawen_xihei, size: font_size.er, weight: "medium")
  关于使用授权的声明\
  \

  #set align(left)
  #set text(font: font_family.songti, size: font_size.xiao_san, weight: "regular")
  #set par(first-line-indent: 2em, leading: 1em, justify: false)
  本人在指导老师指导下所完成的毕业论文（设计）及相关的资料（包括图纸、试验记录、原始数据、实物照片、图片、录音带、设计手稿等），知识产权归属大连理工大学。本人完全了解大连理工大学有关保存、使用毕业论文（设计）的规定，本人授权大连理工大学可以将本毕业论文（设计）的全部或部分内容编入有关数据库进行检索，可以采用任何复制手段保存和汇编本毕业论文（设计）。如果发表相关成果，一定征得指导教师同意，且第一署名单位为大连理工大学。本人离校后使用毕业毕业论文（设计）或与该论文直接相关的学术论文或成果时，第一署名单位仍然为大连理工大学。\
  \
  \
  论文作者签名：#h(30%) 日 期：\
  指导老师签名：#h(30%) 日 期：\
  #pagebreak(weak: true)
]
