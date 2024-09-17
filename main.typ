#let gray = rgb("#303848")
#let orange = rgb("#BF9268")
#let light_gray = rgb("#F2F2F2")
#let my_font = "Arial"

#set page(
  paper: "a4",
  margin: (top: 0pt, bottom: 0pt, left: 0pt, right: 0pt),
  number-align: center,
  background: {
    place(top, rect(fill: gray, width: 100%, height: 10%))
    place(bottom, rect(fill: gray, width: 100%, height: 10%))
    /*place(bottom+right, {
      move(dx: -3pt, dy: -3pt)[
        #text(fill: white, font: my_font, size: 8pt)[
          mis à jour le 09/2024
        ]
      ]
    })*/
  }
)

#let h_photo = 25%
#let h_divers = 38%
#let h_main = 100% - h_divers

#let v_photo = 21%
#let v_nom = 17%
#let v_recherche = 8%
#let v_formation = 15%
#let v_projet = 30%
#let v_experience = 100% - v_photo - v_recherche - v_formation - v_projet

#let cadre_photo() = {
  align(right + bottom)[
    #box(width: auto, height: 85%, stroke: gray + 4pt,)[
      #image("image.jpg")
    ]
  ]
}

#let cadre_nom() = {
  align(center + bottom)[
    #box(width: 85%, height: 80%, stroke: orange + 4pt, fill: white)[
      #align(center + top)[
      #move(dy: 15pt)[
          #text(font: my_font, fill: gray, size: 30pt, weight: "extralight", spacing: 100%, tracking: 4pt)[
            Enzo LE VAN
          ]
          #linebreak()
          #move(dy: 0pt)[
            #text(font: my_font, fill: gray, size: 15pt, weight: "bold", tracking: 4pt)[
              Elève en 2ème année à
            ]
            #linebreak()
            #text(font: my_font, fill: gray, size: 15pt, weight: "bold", tracking: 4pt)[
              CentraleSupélec
            ]
          ]
          #move(dy: 0pt)[
            #text(font: my_font, fill: gray, size: 10pt, weight: "extralight", tracking: 4pt)[
              Alumni du lycée privé Sainte-Geneviève
            ]
          ]
        ]
      ]
    ]
  ]
}

#let cadre_contact() = {
  align(center + horizon)[
    #move(dy: 6pt)[
      #text(font: my_font, fill: gray, size: 13pt, weight: "semibold")[
        e-mail : enzo.le-van\@student-cs.fr
      ]
    ]
  ]
}

#let cadre_recherche() = {
  move(dx: 5%, dy: 14pt)[
    #line(length: 90%, stroke: orange + 2pt)
  ]
  align(center)[
    #move(dy: 14pt)[
      #text(font: my_font, fill: gray, size: 11pt, weight: "semibold")[
        En recherche d'un stage de césure d'une durée de 6 mois à partir de septembre dans les domaines de l'informatique ou robotique où je pourrais en apprendre plus sur le rôle d'un ingénieur dans ces milieux.
      ]
    ]
  ]
}

#let cadre_divers() = {
  let langues() = {
    move(dx: 5%, dy: 15pt)[
      #line(length: 90%, stroke: orange + 2pt)
    ]

    align(center)[
      #move(dx: 0pt, dy: -5pt)[
        #highlight(fill: light_gray, extent: 8pt)[
          #text(font: my_font, fill: gray, size: 15pt, weight: "semibold", tracking: 2pt)[
            Langues
          ]
        ]
      ]
    ]
  }
  let loisirs() = {
    move(dx: 5%, dy: 15pt)[
      #line(length: 90%, stroke: orange + 2pt)
    ]

    align(center)[
      #move(dx: 0pt, dy: -5pt)[
        #highlight(fill: light_gray, extent: 8pt)[
          #text(font: my_font, fill: gray, size: 15pt, weight: "semibold", tracking: 2pt)[
            Loisirs
          ]
        ]
      ]
    ]
  }
  let competences() = {
    move(dx: 5%, dy: 15pt)[
      #line(length: 90%, stroke: orange + 2pt)
    ]

    align(center)[
      #move(dx: 0pt, dy: -5pt)[
        #highlight(fill: light_gray, extent: 8pt)[
          #text(font: my_font, fill: gray, size: 15pt, weight: "semibold", tracking: 2pt)[
            Compétences
          ]
        ]
      ]
    ]
  }

  align(right)[
    #block(fill: light_gray, width: 90%, height: 100%)[
      #align(left)[
        #grid(
          columns: (100%),
          rows: (33%, 33%, auto),
          langues(),
          loisirs(),
          competences()
        )
      ]
    ]
  ]
}

#let cadre_formation() = {
  align(left + top)[
    #box(fill: gray, width: 150pt, height: 30pt)[
      #align(center + horizon)[
        #text(font: my_font, size: 14pt, weight: "semibold", fill: white, tracking: 2pt)[
          Formation
        ]
      ]
    ]
  ]

  move(dx: 150pt, dy: -30pt)[
    #line(length: 225pt, stroke: orange + 2pt)
  ]
}

#let cadre_projet() = {
  align(left + top)[
    #box(fill: gray, width: 150pt, height: 30pt)[
      #align(center + horizon)[
        #text(font: my_font, size: 14pt, weight: "semibold", fill: white, tracking: 2pt)[
          Projets
        ]
      ]
    ]
  ]

  move(dx: 150pt, dy: -30pt)[
    #line(length: 225pt, stroke: orange + 2pt)
  ]
}

#let cadre_experience() = {
  move(dx: 5%, dy: 14pt)[
    #line(length: 90%, stroke: orange + 2pt)
  ]
  move(dx: h_divers, dy: -14pt)[
    #box(fill: gray, width: 150pt, height: 30pt)[
      #align(center + horizon)[
        #text(font: my_font, size: 14pt, weight: "semibold", fill: white, tracking: 2pt)[
          Expérience
        ]
      ]
    ]
  ]
}

#grid(
  columns: (h_photo, h_divers - h_photo, h_main),
  rows: (v_nom, v_photo - v_nom, v_recherche, v_formation, v_projet, v_experience),
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
    rowspan: 1,
    colspan: 1,
  )[#cadre_formation()],
  grid.cell(
    x: 2,
    y: 4,
    rowspan: 1,
    colspan: 1,
  )[#cadre_projet()],
  grid.cell(
    x: 0,
    y: 5,
    rowspan: 1,
    colspan: 3,
  )[#cadre_experience()],
)
