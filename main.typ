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
    place(bottom, rect(fill: gray, width: 100%, height: 1%))
  }
)

#let h_photo = 25%
#let h_divers = 38%
#let h_main = 100% - h_divers

#let v_photo = 21%
#let v_nom = 17%
#let v_recherche = 8%
#let v_formation = 18%
#let v_projet = 25%
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
      #move(dy: 25pt)[
          #text(font: my_font, fill: gray, size: 30pt, weight: "extralight", spacing: 100%, tracking: 4pt)[
            Enzo LE VAN
          ]
          #linebreak()
          #move(dy: 10pt)[
            #text(font: my_font, fill: gray, size: 15pt, weight: "bold", tracking: 4pt)[
              Elève en 2ème année à
            ]
            #linebreak()
            #text(font: my_font, fill: gray, size: 15pt, weight: "bold", tracking: 4pt)[
              CentraleSupélec
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
      #text(font: my_font, fill: gray, size: 9pt, weight: "semibold")[
        enzo.le-van\@student-cs.fr | https://github.com/Hennzau | www.linkedin.com/in/enzo-le-van
      ]
    ]
  ]
}

#let cadre_recherche() = {
  move(dx: 5%, dy: 14pt)[
    #line(length: 90%, stroke: orange + 2pt)
  ]
  align(center)[
    #move(dy: 18pt)[
      #text(font: my_font, fill: gray, size: 10pt, weight: "semibold")[
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

    align(center)[
      #move(dy: 0pt)[
        #text(font: my_font, fill: gray, size: 11pt, weight: "semibold")[
          Anglais : C1
        ]
        #linebreak()
        #text(font: my_font, fill: gray, size: 11pt, weight: "semibold")[
          Espagnol : B2
        ]
        #linebreak()
        #linebreak()
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

    align(center)[
      #move(dy: 0pt)[
        #text(font: my_font, fill: gray, size: 11pt, weight: "semibold")[
          Piano depuis 6 ans
          #linebreak()
          Guitare depuis 7 ans
        ]
        #linebreak()
        #linebreak()
        #text(font: my_font, fill: gray, size: 11pt, weight: "semibold")[
          Wing Chun en club
          #linebreak()
          Escalade en EPS
        ]
        #linebreak()
        #linebreak()
        #text(font: my_font, fill: gray, size: 11pt, weight: "semibold")[
          Java & C++ depuis 10 ans
          #linebreak()
          Rust depuis 2 ans
        ]
        #linebreak()
        #linebreak()
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

    align(center)[
      #move(dy: 0pt)[
        #text(font: my_font, fill: gray, size: 11pt, weight: "semibold")[
          Electronique
          #linebreak()
          Programmation
          #linebreak()
          Logiciels JetBrains
          #linebreak()
          GitHub CI/CD
        ]
        #linebreak()
        #linebreak()
      ]
    ]
  }

  align(right)[
    #block(fill: light_gray, width: 90%, height: 100%)[
      #align(left)[
        #grid(
          columns: (100%),
          rows: (auto, auto, auto),
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

  move(dy: -16pt)[
    #list(
      indent: 15pt,
      tight: false,
      [
        #text(font: my_font, fill: gray, size: 10pt, weight: "extralight")[
          #text(weight: "semibold")[Echange universitaire] : 15/01/2025 - 7/06/2025
          #linebreak()
          #text(weight: "semibold")[Linköpings Universitet | Suède]
        ]
      ],
      [
        #text(font: my_font, fill: gray, size: 10pt, weight: "extralight")[
          #text(weight: "semibold")[2ème année Ingénieur] : Energie électrique, systèmes électroniques, physique
          des ondes, thermodynamique, thermique, véhicules autonomes
          #linebreak()
          #text(weight: "semibold")[Ecole CentraleSupélec | Gif-sur-Yvette]
        ]
      ],
      [
        #text(font: my_font, fill: gray, size: 10pt, weight: "extralight")[
          #text(weight: "semibold")[MPSI/PSI\*] : Mathématiques, Physique, 30/08/2021 - 1/09/2023
          #linebreak()
          #text(weight: "semibold")[Lycée Privé Sainte-Geneviève | Versailles]
        ]
      ]
    )
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

  move(dy: -16pt)[
    #list(
      indent: 15pt,
      tight: false,
      [
        #text(font: my_font, fill: gray, size: 10pt, weight: "extralight")[
          #text(weight: "semibold", size: 12pt)[`zz`] : `CLI` pour une utilisation simplifiée de Python (`venv` et `pip`)
          #linebreak()
          #text(weight: "semibold")[CentraleSupélec | Rust]
        ]
      ],
      [
        #text(font: my_font, fill: gray, size: 10pt, weight: "extralight")[
          #text(weight: "semibold", size: 12pt)[`fastformat`] : Bibliothèque de conversion de données réelles en différents formats utilisable par divers framework
          #linebreak()
          #text(weight: "semibold")[Equipe #text(weight: "semibold", size: 12pt)[`dora-rs`] | Rust & Python]
        ]
      ],
      [
        #text(font: my_font, fill: gray, size: 10pt, weight: "extralight")[
          #text(weight: "semibold", size: 12pt)[`dora-rs`] : Framework de robotique (contribution)
          #linebreak()
          #text(weight: "semibold")[Equipe #text(weight: "semibold", size: 12pt)[`dora-rs`] | Rust & Python]
        ]
      ],
      [
        #text(font: my_font, fill: gray, size: 10pt, weight: "extralight")[
          #text(weight: "semibold", size: 12pt)[`dora-lerobot`] : Intégration de dora-rs et LeRobot sur des robots réels
          #linebreak()
          #text(weight: "semibold")[HuggingFace | Python]
        ]
      ],
      [
        #text(font: my_font, fill: gray, size: 10pt, weight: "extralight")[
          #text(weight: "semibold", size: 12pt)[`RoverCS`] : Création d'un rover autonome en équipe, 02/2024 - 06/2024
          #linebreak()
          #text(weight: "semibold")[NXP Cup | Python & C]
        ]
      ],
    )
  ]
}

#let cadre_experience() = {
  move(dx: 5%, dy: 28pt)[
    #line(length: 90%, stroke: orange + 2pt)
  ]

  move(dx: 50% - 75pt, dy: 0pt)[
    #box(fill: gray, width: 150pt, height: 30pt)[
      #align(center + horizon)[
        #text(font: my_font, size: 14pt, weight: "semibold", fill: white, tracking: 2pt)[
          Expérience
        ]
      ]
    ]
  ]

  align(center + top)[
    #let pad = 3pt
    #move(dy: pad)[
      #text(font: my_font, fill: gray, size: 10pt, weight: "extralight")[
        #text(weight: "semibold")[• Stagiaire opérateur], 06/2024 - 07/2024
        #linebreak()
        Production de parafoudre basse tension • #text(weight: "semibold")[Lyon] • Eurotect Electrical
      ]
    ]
    #move(dy: pad)[
      #text(font: my_font, fill: gray, size: 10pt, weight: "extralight")[
        #text(weight: "semibold")[• Stagiaire 1ms.ai et HuggingFace], 05/2024 - 09/2024
        #linebreak()
        Création de #text(weight: "semibold", size: 12pt)[`dora-lerobot`] • #text(weight: "semibold")[Paris] • 1ms.ai & HuggingFace
      ]
    ]
    #move(dy: pad)[
      #text(font: my_font, fill: gray, size: 10pt, weight: "extralight")[
        #text(weight: "semibold")[• Staffeur çapèse soirées], 09/2023 - Aujourd'hui
        #linebreak()
        Surveillance anti VSS • #text(weight: "semibold")[Gif-sur-Yvette] • Association çapèse
      ]
    ]
    #move(dy: pad)[
      #text(font: my_font, fill: gray, size: 10pt, weight: "extralight")[
        #text(weight: "semibold")[• Staffeur Pépin], 09/2023 - Aujourd'hui
        #linebreak()
        Préparateur de commandes de produits locaux • #text(weight: "semibold")[Gif-sur-Yvette] • Association Impact
      ]
    ]
    #move(dy: pad)[
      #text(font: my_font, fill: gray, size: 10pt, weight: "extralight")[
        #text(weight: "semibold")[• Aide aux devoirs], 09/2021 - 06/2022
        #linebreak()
        Aide aux devoirs du collège • #text(weight: "semibold")[Versailles] • ARPEJ
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
