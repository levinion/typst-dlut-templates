#let empty_box = {
  v(-1em)
  box()
}

#let invisible_heading(..args) = {
  v(-1em)
  hide(box[#heading(numbering: none, ..args)] + empty_box)
}

