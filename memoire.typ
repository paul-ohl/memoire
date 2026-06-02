#set page(paper: "a4")
#set heading(numbering: "1.A.a.")
#set text(font: "Liberation Serif", size: 14pt)
#set quote(block: true)

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

== Le contexte

Dans le cadre de mon travail en alternance, j'ai été confronté à plusieurs
projets techniques au cours desquels les IAs génératives (telles que ChatGPT ou
Cursor) avaient été utilisées. Or j'ai constaté une différence de qualité énorme
entre les projets. L'un de ces projets était devenu si complexe à naviguer qu'il
était très difficile de faire le moindre changement _sans_ une IA.

J'ai trouvé dans ce projet tous les _code smells_ possible: Des fichiers de
plusieurs milliers de lignes, une batterie de tests presque vide, des `try
catch` excessivement complexes et utilisés de manière inappropriée.

Travailler sans IA sur ce projet s'est révélé impossible, et j'ai donc dû
continuer à empirer le code, car je ne voyais pas comment défaire les problèmes
structurels face auxquels je me trouvais. J'étais également sous la pression du
temps et ne pouvais pas me permettre de réellement m'investir dans une
refactorisation qui aurait pû améliorer la situation. Je me suis contenté
d'écrire mon module le plus proprement possible, puis de l'isoler au maximum du
code existant, mais j'ai indéniablement contribué à rendre le code encore moins
navigable pour le·la programmeu·r·se qui viendra après moi.

"Au diable les IAs! Elles ruinent tout!", me suis-je exclamé multiple fois au
cours de mon travail sur ce projet. Il était clair pour moi, comme on me
l'annonçait partout sur internet, que les IAs génératives n'étaient pas prêtes à
l'usage pour du code "sérieux", et que leur usage résulterais nécessairement en
un code inutilisable.

#pagebreak()

== La réalisation

#quote(attribution: [Un ami à qui je dois le sujet de ce mémoire])[
  Crois-tu vraiment qu'il ait fallu attendre les IAs pour avoir du code
  inutilisable?
]

Dans "Coder proprement" (un livre écrit en 2008), Robert C. Martin décrit dès le
tout premier chapitre ce que je viens de traverser pendant les deux derniers
mois:

#quote(attribution: [Robert C. Martin])[
  Nous pataugeons dans le mauvais code. Nous avançons laborieusement dans un
  amas de ronces enchevêtrées et de pièges cachés. Nous nous débattons pour
  trouver notre chemin, en espérant des indications et des indices sur ce qui
  se passe. Mais, tout ce que nous voyons, c’est de plus en plus de code
  dépourvu de sens.
]

Le mauvais code existe depuis que le code existe. Cela a toujours été une
constante, et n'est pas prêt de changer.

En revanche, il est tout aussi vrai que depuis que le mauvais code existe, les
ingénieur·e·s informatique ont fait de leur mieux pour tenter de produire du
code _propre_, et d'aider leurs collègues à faire de même.

L'arrivée massive des IAs génératives dans l'environnement de travail des
ingénieur·e·s informatique a été une révolution, car maintenant tout le monde a
"une équipe de développeur·se·s virtuel·le·s" à sa disposition. Mais cela
signifie également que tout le monde doit désormais apprendre la gestion
d'équipe!

Dans ce mémoire, je défendrai le fait que les difficultés rencontrées dans le
cadre du développement assisté par IA générative ne sont ni nouvelles, ni
insurmontables, et que nous pouvons apprendre des leçons des ingénieur·e·s
d'hier face aux problèmes d'aujourd'hui.

= Problématique

#styled-quote[Quels enseignements la gestion d'équipe peut-elle apporter à
  l'utilisation des IA génératives pour limiter la dette technique ?]

= Rapport d'étonnement

Le problème de la dette technique liées aux IAs génératives est souvent traité
comme étant unique et nouveau. La seule différence que je constate est que les
ingénieur·e·s sont confronté·e·s aux difficultés de la gestion d'équipe et de la
qualité de code beaucoup plus tôt dans leur carrière.

= Le problème de la dette technique

Comme mentionné dans l'introduction, le problème du mauvais code, ou de la dette
technique, est presque aussi vieux que l'informatique elle-même.

Il est utile de commencer ce chapitre par une définition de la dette technique:

#quote(attribution: [Article d'IBM par Tim Mucci])[
  La dette technique désigne les coûts futurs associés au recours à des
  raccourcis ou à des décisions sous-optimales prises lors du développement d'un
  logiciel.
]

Détaillons cette phrase, car le terme de _dette_ est particulièrement bien
choisi. En effet, en tant qu'ingénieur·e·s, le fait de prendre des décisions
dangereuses pour la propreté du code rend notre travail _futur_ plus difficile
et long, que ces décisions soient prises consciemment ou non.

De plus, ces décisions dangereuses sont souvent prises dans le but _d'accélérer_
le développement actuel de la solution logicielle. Cela rend la dette technique
d'autant plus pernicieuse qu'elle demande un effort _conscient et constant_ pour
éviter d'être trop accumulée. Cela passe par un grand nombre de mesures qui
seront détaillées dans ce mémoire.

Cette dette technique représente un poids monumental pour toute organisation
ayant une dépendance sur un logiciel, qu'elle le produise elle-même ou non. En
effet, si le moindre changement de logique demande 6 mois de travail, il est
impossible d'avoir la réactivité nécessaire au monde moderne en constante
évolution, que l'organisation soit une start-up tech ou un fabriquant de
meubles.

#quote(attribution: [Robert C. Martin - Clean Code])[
  [En parlant d'une entreprise avec un très bon produit qui a fait faillite
  quelques années après son lancement:]

  Ils s’étaient précipités pour placer le produit sur le marché, mais avaient
  massacré le code. Avec l’ajout de nouvelles fonctionnalités, la qualité du
  code s’est dégradée de plus en plus, jusqu’à ce qu’ils ne puissent plus le
  maîtriser. _Un mauvais code a été à l’origine de la faillite de l’entreprise._
]

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

= Annexe

== Lexique

- Code smell: Un indicateur dans le code que quelque chose ne va probablement
  pas, et que le code n'est pas propre. Plus il y a de _code smells_, plus il y
  a de chances que le projet soit très difficile à maintenir.

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
