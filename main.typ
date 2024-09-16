#set page(
  paper: "a4",
  margin: (top: 0pt, bottom: 0pt, left: 0pt, right: 0pt),
  number-align: center,
)

#let entete1 = 10%
#let entete2 = 10%
#let recherche = 7%

#let main1 = 25%
#let main2 = 25%
#let engagement = 23%

#let cadre_photo() = {
  rect(fill: red, width: 100%, height: 100%)[Photo]
}

#let cadre_nom() = {
  rect(fill: blue, width: 100%, height: 100%)[Nom]
}

#let cadre_contact() = {
  rect(fill: yellow, width: 100%, height: 100%)[Contact]
}

#let cadre_recherche() = {
  rect(fill: green, width: 100%, height: 100%)[Recherche]
}

#let cadre_divers() = {
  rect(fill: yellow, width: 100%, height: 100%)[Divers]
}

#let cadre_formation() = {
  rect(fill: orange, width: 100%, height: 100%)[Formation]
}

#let cadre_engagement() = {
  rect(fill: gray, width: 100%, height: 100%)[Engagement]
}

#grid(
  columns: (20%, 10%, 70%),
  rows: (entete1, entete2, recherche, main1, main2, engagement),
  grid.cell(
    x: 0,
    y: 0,
    rowspan: 2,
    colspan: 1,
  )[#cadre_photo()],
  grid.cell(
    x: 1,
    y: 0,
    rowspan: 1,
    colspan: 2,
  )[#cadre_nom()],
  grid.cell(
    x: 1,
    y: 1,
    rowspan: 1,
    colspan: 2,
  )[#cadre_contact()],
  grid.cell(
    x: 0,
    y: 2,
    rowspan: 1,
    colspan: 3,
  )[#cadre_recherche()],
  grid.cell(
    x: 0,
    y: 3,
    rowspan: 2,
    colspan: 2,
  )[#cadre_divers()],
  grid.cell(
    x: 2,
    y: 3,
    rowspan: 2,
    colspan: 1,
  )[#cadre_formation()],
  grid.cell(
    x: 0,
    y: 5,
    rowspan: 1,
    colspan: 3,
  )[#cadre_engagement()],
)
