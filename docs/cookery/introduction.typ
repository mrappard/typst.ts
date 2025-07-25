#import "/docs/cookery/book.typ": book-page
#import "/github-pages/docs/graphs.typ": data-flow-graph, ir-feature-graph
#import "mod.typ": cond-image

#show: book-page.with(title: "Introduction")

= Introduction

Typst.ts is a project dedicated to bring the power of #link("https://github.com/typst/typst")[typst] to the world of JavaScript. In short, it composes ways to compile and render your Typst document typically inside *Browser Environment*. In the scope of server-side rendering collaborated by #text(fill: rgb("#3c9123"), "server") and #text(fill: blue, "browser"), there would be a data flow like this:

#figure(
  {
    set text(size: 12pt)
    cond-image(data-flow-graph())
  },
  caption: [Browser-side module needed: $dagger$: compiler; $dagger.double$: renderer. ],
  numbering: none,
)

Specifically, it first presents a typst document in three typical forms:

- #link("https://myriad-dreamin.github.io/typst.ts/cookery/guide/compiler/ts-cli.html")[Form1]: Render to SVG and then embed it as a high-quality vectored image directly.

- #link("https://myriad-dreamin.github.io/typst.ts/cookery/guide/compiler/ts-cli.html")[Form2]: Preprocessed to a Vector Format artifact.

- #link("https://myriad-dreamin.github.io/typst.ts/cookery/guide/compiler/serverless.html")[Form3]: Manipulate a canvas element directly.

The #emph("Form2: Vector Format") is developed specially for typst documents, and it has several fancy features:

#let vc-graph = scale(
  120%,
  {
    set text(size: 12pt)
    v(0.5em)
    cond-image(ir-feature-graph())
    v(0.5em)
  },
)

#figure(
  cond-image(vc-graph),
  caption: [Figure: Features of the #emph("Vector Format"). ],
  numbering: none,
)

// - Incremental Font Transfer

So with *Form2*, you can continue rendering the document in different ways:

#include "direction/main-content.typ"

// Typst.ts allows you to independently run the Typst compiler and exporter (renderer) in your browser.

// You can:

// - locally run the compilation via `typst-ts-cli` to get a precompiled document,
//   - or use `reflexo-typst` to build your backend programmatically.
// - build your frontend using the lightweight TypeScript library `typst.ts`.
// - send the precompiled document to your readers' browsers and render it as HTML elements.

== Application

- #link("https://myriad-dreamin.github.io/typst.ts/")[A Website built with Typst.ts]

- #link("https://github.com/Enter-tainer/typst-preview-vscode")[Instant VSCode Preview Plugin]

- #link("https://www.npmjs.com/package/hexo-renderer-typst")[Renderer Plugin for Hexo, a Blog-aware Static Site Generator]

- Renderer/Component Library for #link("https://www.npmjs.com/package/@myriaddreamin/typst.ts")[JavaScript], #link("https://www.npmjs.com/package/@myriaddreamin/typst.react")[React], and #link("https://www.npmjs.com/package/@myriaddreamin/typst.angular")[Angular]

== Further reading

+ #link("https://myriad-dreamin.github.io/typst.ts/cookery/get-started.html")[Get started with Typst.ts]
+ #link("https://myriad-dreamin.github.io/typst.ts/cookery/guide/trouble-shooting.html")[Trouble shooting]
