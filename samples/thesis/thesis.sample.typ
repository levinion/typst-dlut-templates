#import "../../templates/thesis/main.typ": *

#show: thesis.with(
  chinese_title: "",
  english_title: "",
  faculty: "",
  major: "",
  name: "",
  id: "",
  sup: "",
  rev: "",
  date: "",
  chinese_abstract: [],
  chinese_keywords: (),
  english_abstract: [],
  english_keywords: (),
  intro: [],
  conclusion:[],
  bib: bibliography("./ref.bib", full: true),
  changelog: [],
  thanks: []
)
