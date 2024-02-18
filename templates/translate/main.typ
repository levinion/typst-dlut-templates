#import "../util/style.typ":font_family,font_size
#import "./cover.typ":cover
#import "../util/functions.typ":empty_box

#let three_line_table(values, caption: none, columns: auto)={
  let _three_line_table(values) = {
    let tlt_header(content) = {
      set align(center)
      rect(width: 100%, stroke: (bottom: 0.3pt), [#content])
    }

    let tlt_cell(content) = {
      set align(center)
      rect(width: 100%, stroke: none, [#content])
    }

    let tlt_row(r) = {
      (..r.map(tlt_cell).flatten())
    }

    rect(
      stroke: (bottom: 0.3pt, top: 0.3pt), inset: 0pt, outset: 0pt, grid(
        columns: auto, rows: auto,
        // table title
        grid(columns: columns, ..values.at(0).map(tlt_header).flatten()), grid(columns: columns, ..values.slice(1).map(tlt_row).flatten()),
      ),
    )
  }

  figure(_three_line_table(values), caption: caption, kind: table)
}

#let equa(content, caption: "")={
  figure(content, caption: caption, kind: "equation", supplement: "equation")
}

#let pic(content, caption: "")={
  figure(content, caption: caption, kind: image)
}

#let bold(content)={
  text(font: font_family.songti_bold, weight: "bold", content)
}

#let translate(
  content, chinese_title: "外文的中文题目", english_title: "The title of foreign language",
  author: "", workplace: "", faculty: "", major: "",
  name: "", id: "", sup: "", date: "",
  abstract: none, keywords: (),
)={
  set text(lang: "zho")
  set heading(numbering: "1.1.1    ")

  show heading:it=>{
    set align(left)
    set text(weight: "regular")
    set par(leading: 1.5em, first-line-indent: 0em)
    if it.level == 1 {
      set text(font: font_family.heiti, size: font_size.xiao_san)
      set block(below: 25pt)
      it + empty_box
    } else if it.level == 2 {
      set text(font: font_family.heiti, size: font_size.si)
      set block(above: 1.5em, below: 18pt)
      it + empty_box
    } else {
      set text(font: font_family.heiti, size: font_size.xiao_si)
      set block(above: 1.5em, below: 15pt)
      it
    }
    empty_box
  }

  show figure:it=>{
    set align(center)
    set text(font: font_family.songti, size: font_size.wu)
    v(1em)

    let num(kind) = locate(
      loc=>{
        let chap = counter(heading.where(level: 1)).at(loc).first()
        let chap_loc = query(heading.where(level: 1), loc).at(chap - 1).location()
        let num_before = counter(figure.where(kind: kind)).at(chap_loc).first()
        let count = counter(figure.where(kind: kind)).at(loc).first()
        str(chap) + "." + str(count - num_before)
      },
    )

    if it.kind == image and it.caption != none {
      it.body
      "图" + num(image) + "    " + it.caption.body
      v(1em)
    } else if it.kind == table and it.caption != none {
      text(size: font_size.wu)[
        #{
          "表" + num(table) + "    " + it.caption.body
          it.body
          v(1em)
        }
      ] + empty_box
    } else if it.kind == "equation" {
      grid(
        columns: (20fr, 1fr), it.body, align(center + horizon)[(#num("equation"))],
      )
    } else {
      it
    }
  }

  show ref:it=>{
    let el = it.element
    if el != none {
      let num(kind) = locate(
        loc=>{
          let chap = counter(heading.where(level: 1)).at(loc).first()
          let chap_loc = query(heading.where(level: 1), loc).at(chap - 1).location()
          let num_before = counter(figure.where(kind: kind)).at(chap_loc).first()
          let count = counter(figure.where(kind: kind)).at(loc).first()
          str(chap) + "." + str(count - num_before)
        },
      )
      if el.kind == image {
        "图" + num(image)
      } else if el.kind == table {
        "表" + num(table)
      } else if el.kind == "equation" {
        "公式" + num("equation")
      }
    } else {
      it
    }
  }

  cover(chinese_title, english_title, faculty, major, name, id, sup, date)

  set page(
    margin: (top: 4.3cm, bottom: 3.3cm, left: 2.5cm, right: 2.5cm), footer: {
      set align(center)
      set text(font: font_family.songti, size: font_size.xiao_wu)
      counter(page).display("-1-")
    }, numbering: "1", header: {
      set align(center)
      set text(font: font_family.songti, size: font_size.wu, weight: "regular")
      rect(width: 100%, stroke: (bottom: 0.5pt + black))[#chinese_title]
    },
  )

  align(
    center,
  )[
    #par(
      leading: 1em,
    )[
      #text(
        font: font_family.songti_bold, size: font_size.san, weight: "medium",
      )[#chinese_title]\
      #text(
        font: font_family.songti_bold, size: font_size.xiao_san, weight: "medium",
      )[#author]\
      #text(
        font: font_family.songti_bold, size: font_size.si, weight: "regular",
      )[#workplace]
    ]
  ]

  set text(font: font_family.songti, size: font_size.xiao_si)
  set par(justify: false, leading: 1em, first-line-indent: 2em)
  show par:set block(spacing: 1em)
  set enum(numbering: "（1）", indent: 2em)
  show enum:it=>{
    set block(spacing: 1.25em)
    it
  }

  [#h(-2em)摘要：]
  parbreak()
  abstract
  parbreak()
  text(font: font_family.heiti, size: font_size.xiao_si, weight: "medium")[
    #h(-2em)关键词：
    #keywords.join("；")
  ]
  v(1em)

  introduction(intro)

  content

  pagebreak(weak: true)
}
