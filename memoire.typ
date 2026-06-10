#set page(paper: "a4")
#set heading(numbering: "1.1.1)")
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

== Une courte définition

Ce mémoire parle des IAs génératives, il serait donc utile de définir ce terme
qui peut être interprété de manière ambigüe.

De nombreux termes sont utilisés pour les décrire: LLMs (Large Language Models),
réseaux de neurones, ou simplement "les IAs".

Tous ces termes décrivent les IAs telles que développées par Anthropic (Claude),
Google (Gemini) ou OpenAI (ChatGPT): Des IAs qui sont capable d'interpréter et
générer du texte, d'une façon imitant l'intelligence.

Je parlerai également des "agents" dans ce mémoire. C'est un terme qui décrit
simplement un programme qui permet à une IA générative d'intéragir directement
avec des éléments du "monde réel". Par exemple, un agent se chargera de
récupérer la météo de la journée avant de la donner à une IA pour qu'elle se
base sur ces informations pour donner un bulletin météo. En effet, sans un agent
pour récupérer des données extérieures, une IA générative n'a accès à rien de
plus que les données avec lesquelles elle a été entraînée initialement, qui sont
souvent devenues obsolètes.

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
un code empiré et impossible à maintenir.

== La réalisation

#quote(attribution: [Un ami à qui je dois le sujet de ce mémoire])[
  Crois-tu vraiment qu'il ait fallu attendre les IAs pour avoir du code
  inutilisable?
]

Dans "Coder proprement" (un livre écrit en *2008*), Robert C. Martin décrit dès
le tout premier chapitre ce que je venais de traverser pendant les quelques mois
de ma mission:

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
code "propre", et d'aider leurs collègues et leurs prochains à faire de même.

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
comme étant unique et nouveau. Or la seule différence que je constate est que
les ingénieur·e·s sont confronté·e·s aux difficultés de la gestion d'équipe et
de la qualité de code beaucoup plus tôt dans leur carrière.

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

Coder proprement est difficile. C'est un art autant qu'une discipline
d'ingénierie, et demande de l'investissement et de l'attention.

Coder en équipe est un problème autrement plus difficile! Une équipe peut être
composée de membres très talentueux et malgré tout produire beaucoup de dette
technique.

En effet, au delà de la qualité du code produit par chaque personne,
_l'uniformité_ du code est une nouvelle contrainte qui, si elle n'est pas prise
en compte, peut rapidement créer des problèmes.

La gestion de la qualité du code en équipe représente une telle complexité
qu'elle en est devenu une discipline à part entière. Une personne est dédiée à
s'assurer de la qualité et de l'uniformité du code. Son travail consiste
notamment en l'accompagnement des autres ingénieur·e·s de l'équipe, le suivi de
l'évolution du code, et surtout la revue de code (_code review_), c'est-à-dire
l'inspection méthodique des changements pour les valider ou non.

Souvent, ces _code reviews_ s'intéressent plus à la propreté du code qu'à son
fonctionnement. En effet, dans le cadre du développement logiciel en équipe, la
propreté du code est *plus critique* que son fonctionnement!

Nous reviendrons en détail sur ce métier de responsable qualité dans un chapitre
ultérieur afin de détailler comment réduire et repousser au maximum la dette
technique au sein d'un projet en équipe.

== Lors du développement logiciel assisté par IA générative

De nombreux problèmes majeurs sont posé par l'arrivée des IAs génératives dans
la boîte à outils des ingénieur·e·s informatique, mais je défends que ces
problèmes existaient déjà avant leur arrivée, et n'ont été que rendu plus
visibles et surtout, qu'ils se sont mis à toucher des développeurs moins
expérimentés, qui n'ont donc pas l'expérience pour se rendre compte du danger.

=== Le danger de l'attaque de la chaîne d'approvisionnement

Comme indiqué plus tôt, les IAs génératives n'ont pas accès aux informations du
monde réel directement, elles se basent sur les informations obtenues pendant
leur entraînement, qui a potentiellement été réalisé plusieurs mois, voire
plusieurs années auparavant.

Cela peut se révéler dangereux, par exemple lorsqu'une dépendance a été
dépréciée ou remplacée par une autre depuis l'entraînement du modèle.

// TODO: Parler également de l'injection de prompt qui permet de mentir aux
// modèles en leur faisant croire qu'une dépendance est safe alors que c'est un
// virus

=== Le danger de la dette technique

Lorsque l'on code longtemps avec une IA sans porter une attention toute
particulière au sujet de la dette technique, le code devient vite impossible à
maintenir. Des fichiers de plusieurs milliers de lignes, des fonctions
interminables, du code dupliqué, des utilisations de librairies externe inutiles
voire dangereuses (voir le chapitre ci-dessus), etc.

C'est exactement le genre de situation à laquelle j'ai fait face dans la mission
décrite en introduction du mémoire.

Les IAs génératives ont tendance à fortement ignorer "l'entretien" du code,
c'est-à-dire la réduction de la dette technique, et nécessitent donc d'être
surveillées, et qu'on leur dise explicitement quoi faire pour garder un code
propre et maintenable.

Sans supervision, ou avec de trop gros changements, le code devient vite
ingérable et impossible à maintenir. Le développeur prend donc le rôle de
responsable qualité et doit continuellement s'assurer de maintenir la dette
technique à un niveau gérable.

=== Le danger du "vibe coding"

Le grand danger dont tout le monde parle sur internet est l'écriture de code par
IA sans supervision humaine, appelé "vibe coding", et c'est bien justifié.

// TODO: développer

= De l'importance de la "propreté" du code

Bien que ce ne soit pas son seul composant, parler de dette technique sans
mentionner la propreté du code est inutile.

Ce critère est essentiel pour maintenir la dette technique à un niveau
acceptable, que ce soit dans un projet en équipe ou dans le cadre d'un
développement assisté par IA générative.

== Grands principes du code propre

Le code propre est centré autour d'une mentalité: Écrire du code pour les
humains plutôt que pour les machines. Comme dit dans un chapitre précédent, il
est plus utile que le code ne fonctionne pas mais soit compréhensible plutôt que
l'inverse.

Des livres entiers ont été écrit sur le code propre (dont notamment "Coder
proprement" de Robert C. Martin qui est une référence), je n'énumèrerai donc pas
tout ce qui rend le code "propre". En revanche, il est utile d'en lister
quelques principes afin de comprendre ce qui rend du code propre ou non.

=== Le nommage doit être explicite et compréhensible

#quote(attribution: [Robert C. Martin])[
  Les noms abondent dans les logiciels. Nous nommons les variables, les
  fonctions, les arguments, les classes et les paquetages. Nous nommons les
  fichiers sources et les répertoires qui les contiennent. […] Puisque les noms
  sont omniprésents, il est préférable de bien les choisir.
]

// TODO: Ça peut paraître anecdotique mais c'est important sa race

=== Éviter la duplication

Le principe du _DRY_ (Don't Repeat Yourself) est central dans l'écriture de code
propre. Les fonctions ont été inventées pour pouvoir utiliser la même logique
dans plusieurs endroits du code, il faut donc en faire usage!

La duplication est dangereuse car une logique modifiée à un endroit doit alors
être _manuellement_ mise à jour dans plusieurs autres endroits du code. Si le
changement doit être réalisé à plusieurs endroits, il est certain qu'en très peu
de temps la personne en charge de faire une modification va oublier de modifier
tous les endroits concernés, et introduire une erreur.

La duplication doit être évitée car se baser sur l'attention humaine invite
systématiquement à l'erreur.

=== Limiter les responsabilité des fonctions

Le fait de coder avec le principe _DRY_ peut introduire un problème: Faire une
modification à un endroit introduit également un changement à un autre endroit
où l'on ne voulait pas voir de changement.

Cela résulte quasiment systématiquement d'avoir écrit des fonctions qui ont une
responsabilité trop grande, c'est-à-dire des fonctions qui font "trop de
choses".

Les fonctions devraient être très simple, très courte, et être composées entre
elles afin d'obtenir un comportement précis, afin de conserver à fois un code
_DRY_ et composable.

Dans "Clean Code", Robert C. Martin invite à pousser le concept à son extrême:
Une fonction ne devrait faire qu'une seule chose.

Bien que cette méthode soit aujourd'hui considéré un peu excessive, elle est
assez indicative de l'objectif qui est visé: Que les fonctions soient simples,
courtes, et avec des responsabilités (très) limitées, afin qu'elles puissent
être composées entre elles mais qu'elles soient tout à fait _indépendantes_, on
parle alors d'un système *fortement composable, mais faiblement couplé*.

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

== Sources

- https://www.ibm.com/fr-fr/think/topics/technical-debt

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
