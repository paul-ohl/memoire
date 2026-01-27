#set page(paper: "a4")
#set heading(numbering: "1.a)")
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

#main-title[Note d'intention de mémoire (v2)]

Contact: #link("mailto:paul.ohl@my-digital-school.org")[paul.ohl\@my-digital-school.org]

Contact du tuteur professionnel: #link("mailto:jeremy.lempereur@iomentum.com")[jeremy.lempereur\@iomentum.com]

= Rapport d'étonnement

Dans le cadre du travail à réaliser au sein de mon entreprise, j'ai été
confronté à une base de code existante laissant à désirer.

En réalité, le terme "laissant à désirer" est un euphémisme. Plusieurs fichiers
que je devais utiliser faisaient plus de 500 lignes, l'architecture était
complètement désorganisée, et j'ai trouvé beaucoup d'erreurs de code qui ne
devraient pas exister dans un code réalisé par un·e professionnel·le (par
exemple, un `try - catch` avec le `try` faisant 70 lignes).

Mon étonnement s'est amplifié lorsque j'ai posé des questions à l'ingénieur qui
avait précédemment travaillé sur le projet. Je recevait soit des réponses très
"généralistes" qui manquaient de clareté (j'entends par là des réponses qui ne
répondent qu'à très haut niveau à ma question, et ne donnent aucun détail qui
me permettrait réellement de résoudre mon problème), soit la réponse avec
laquelle j'allais devenir familier au cours des semaines sur lesquelles j'ai
travaillé sur le projet: "Demande à ChatGPT".

= Les problématiques de l'entreprise

Selon ma compréhension des choses, les problèmes ayant mené à la situation
décrite plus tôt sont multiples:

== Des changements de logique régulier

Des changements réalisés sur la logique fondamentale du code ont été réalisés
plusieurs fois au cours du projet, et ces changements n'ont pas toujours été
correctement communiqués au reste de l'équipe.

Cela a causé un décalage entre la logique à laquelle je m'attendais en allant
inspecter le code, et ce que je trouvais réellement une fois mon *IDE* ouvert.

== Des équipes changeantes

L'équipe est composée du CEO de la start-up, d'un développeur back-end, et de
plusieurs développeurs front-end qui se sont occupés de divers aspects du
front-end.

Malheureusement, la quasi-totalité des ingénieurs ayant travaillé sur le
front-end du projet ont été engagés en free-lance, et n'ont pas pu travailler
ensemble car leur contrats étaient répartis sur des périodes différentes.

Or, le CEO n'ayant pas de compétences technique, il n'a pas pu transmettre les
différentes particularités du code d'un ingénieur à l'autre, notamment les
décisions prises regardant les structures de données permettant de représenter
le domaine au sein du projet.

Cela a mené à un manque cruel de consistence au sein de la structure du code, et
de l'architecture en général.

== Presque aucune documentation ou méthodologie

En commençant à travailler sur ce projet, j'ai récupéré le code du précédent
ingénieur, qui ne m'a laissé que quelques commentaires assez peu précis, et
presque aucune indication sur ce qui était déjà réalisé ou non au sein du projet
excepté des commentaires `// TODO:`.

== Des deadlines serrées

On m'a indiqué à plusieurs reprises que les ingénieurs avaient été soumis à des
deadlines très courtes, les contraignants à coder de façon hâtive, et limitant
fortement leur capacité à écrire du code *"propre"* (voir @early_research), et
les poussant à faire un usage excessif des IA génératives.

== L'utilisation excessive des IA génératives

Tous ces problèmes pre-existants ont été amplifiés par l'utilisation excessive des
IA génératives.

= L'environnement technique

Le projet est une application web avec le front-end en TypeScript à l'aide de
ReactJS, et le back-end en PHP.

La documentation du backend a été réalisée avec Swagger.

La principale IA générative utilisée sur le projet est Cursor.

= État des lieux des missions de l'alternant

Ma mission était initialement de créer des graphiques de visualisation des
données pour le back-office de l'application web, mais ma mission a rapidement
évolué.

L'application permet de créer des pages web assez simples, mais configurables.
J'ai été chargé d'intégrer le formulaire de création de page.

Les plus grosses difficultés liées au code généré par IA ont été rencontrées
lorsqu'il a fallu connecter les données récupérées par le formulaire à une
librairie développée en interne pour prévisualiser la page générée.

La librairie est également codée en TypeScript avec ReactJS.

= Premières lectures / interview <early_research>

Mes lectures pour la réalisation de ce mémoire seront les suivantes:
- Robert C. Martin - Clean Code
- Michael Feathers - Working Effectively with Legacy Code

#image("./media/legacy-code-commitstrip.png", alt: "Comic strip au sujet du livre 'Working effectively with legacy code'", width: 90%)

Aucune interview n'a été réalisée à proprement parler, mais j'ai pu échanger
avec mon maître d'alternance qui m'a aidé à comprendre la situation ainsi que la
marche à suivre pour tenter de la débloquer.

Je compte réaliser des interviews avec des professionnel·le·s du secteur afin de
voir quelles solutions ils ou elles ont pu mettre en place dans des situations
similaires. Je souhaite également explorer les raisons pour lesquelles des
ingénieur·e·s ne souhaitent pas du tout utiliser les IA génératives, et quels
outils ou méthodologies ils ou elles préfèrent utiliser à la place.

= Inquiétudes quant à la réalisation du mémoire

J'ai peur de ne pas pouvoir trouver suffisamment de ressources sur le sujet car
le problème de la dette technique liée aux IA génératives est assez récent. En
revanche, je pense pouvoir m'appuyer sur des ressources traitant de la dette
technique en général, et des problématiques liées au travail en équipe sur des
projets logiciels.

= Conclusion

La problématique de mon mémoire est donc la suivante:

#styled-quote[Quels outils et méthodologies peuvent être mis en place pour
  rendre l'utilisation des IA génératives la plus efficace possible dans un
  projet numérique en équipe? Ce afin d'assurer la maintenabilité et minimiser
  la dette technique]

J'explorerai également le sujet du "remboursement" de cette dette technique
liée aux IA génératives.
