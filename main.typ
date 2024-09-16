#set page(
  paper: "a4",
  margin: (top: 0pt, bottom: 0pt, left: 0pt, right: 0pt),
  number-align: center,
)

#let cadre_photo() = {
  rect(fill: red, width: 100%, height: 200pt)[Photo]
}

#let cadre_nom() = {
  rect(fill: blue, width: 100%, height: 120pt)[Nom]
}

#let cadre_recherche() = {
  rect(fill: green, width: 100%, height: 75pt)[Recherche]
}

#let cadre_divers() = {
  rect(fill: yellow, width: 100%, height: 350pt)[Divers]
}

#let cadre_formation() = {
  rect(fill: orange, width: 100%, height: 350pt)[Formation]
}

#let cadre_engagement() = {
  rect(fill: gray, width: 100%, height: 150pt)[Engagement]
}

#let cadre_experience() = {
  rect(fill: pink, width: 100%, height: 150pt)[Expérience]
}

#grid(
  columns: (30%, 70%),
  rows: (auto),
  gutter: 3pt,
  cadre_photo(),
  cadre_nom()
)

#grid(
  columns: (100%),
  rows: (auto),
  gutter: 3pt,
  cadre_recherche(),
)

#grid(
  columns: (30%, 70%),
  rows: (auto),
  gutter: 3pt,
  cadre_divers(),
  cadre_formation()
)

#grid(
  columns: (100%),
  rows: (auto),
  gutter: 3pt,
  cadre_engagement()
)
