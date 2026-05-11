#set page(paper: "a4")
#set heading(numbering: "1.A.a.")
#set text(font: "Cantarell", size: 14pt)

#show link: set text(fill: blue, weight: 700)
#show link: underline

#let accent-color = rgb("#079D68")

#let main-title(title) = {
  align(center)[
    #block(
      inset: (top: 2em, bottom: 0em)
    )[
      #text(
        size: 24pt,
        weight: "bold",
        fill: black,
        font: "Libertinus Serif"
      )[#title]
    ]
    #v(0em)
    #line(length: 60%, stroke: 2pt + accent-color)
    #v(2em)
  ]
}

#let subtitle(body) = {
    align(center)[
      #set text(
        size: 16pt,
        style: "italic",
        // fill: rgb("#374151")
      )
      #body
    ]
}

#let styled-quote(body) = {
  block(
    inset: (left: 2em, right: 2em, top: 1.5em, bottom: 1.5em),
    fill: rgb("#f8f9fa"),
    radius: 8pt,
    stroke: (left: 4pt + accent-color),
    align(center)[
      #set text(
        size: 16pt,
        style: "italic",
        fill: rgb("#374151")
      )
      #body
    ]
  )
}

#v(6em)

#main-title[Mémoire: L'impact des IA génératives sur la dette technique et les
  méthodologies de travail en équipe]

#subtitle[Paul OHL]

#v(18em)

Contact:
#link("mailto:paul.ohl@my-digital-school.org")[paul.ohl\@my-digital-school.org]

Contact du tuteur professionnel:
#link("mailto:jeremy.lempereur@iomentum.com")[jeremy.lempereur\@iomentum.com]

#pagebreak()

#outline(
  title: [Table des matières],
)
#pagebreak()

= Introduction

Sur le pourquoi de ce mémoire, sur le contexte de mon travail en entreprise, et
les problèmes rencontrés liés à l'utilisation des IA génératives.

= Problématique

#styled-quote[Quels liens peuvent être tirés entre la dette technique liée à
  l'utilisation d'IA génératives, et celle liée à la gestion d'équipe? Et quels
  enseignements peuvent être tirés de ces liens?]

= Rapport d'étonnement

= Le problème de la dette technique

== Lors du développement logiciel en équipe

== Lors du développement logiciel assisté par IA générative

= De l'importance de la "propreté" du code

== Grands principes du code propre

== Impacts de l'architecture sur la propreté du code

== Les langages modernes et leur impact sur la propreté du code

Comparatif Rust JS => 2 langages modernes mais avec des contraintes très différentes.

= Comment maintenir la qualité du code lors du travail en équipe

== Les procédures et rituels

== Les outils de gestion de projet

== La méthodologie SCRUM

Bouquin: SCRUM

= Sur l'utilisation raisonnée des outils d'IA générative

== Gérer une équipe et une IA générative sont des activités comparables

== Sur l'importance de comprendre l'architecture et la structure en détail

= Comment intégrer les IA génératives au travail en équipe

= Quel impact ont les IA génératives sur l'enseignement de l'informatique

= Conclusion

= Notes

Parler de _gouvernance_

// = Lectures / interview <early_research>
//
// - Robert C. Martin - Clean Code
// - Michael Feathers - Working Effectively with Legacy Code
//
// #image("./media/legacy-code-commitstrip.png",
//   alt: "Comic strip au sujet du livre 'Working effectively with legacy code'",
//   width: 90%)
//
// Interviews:
// - Catherine OHL, inspectrice qualité chez Orange
// - Jérémy Lempereur, développeur et chef d'entreprise chez Iomentum?
