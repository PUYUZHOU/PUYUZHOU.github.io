// Puyu Zhou - Academic CV
// Source: cv/puyu_zhou_cv.typ
// Output: assets/pdf/puyu_zhou_cv.pdf

#set document(
  title: "Puyu Zhou - Curriculum Vitae",
  author: "Puyu Zhou",
)

#set page(
  paper: "a4",
  margin: (
    top: 1.35cm,
    bottom: 1.35cm,
    left: 1.35cm,
    right: 1.35cm,
  ),
)

#set text(
  font: "New Computer Modern",
  size: 9.3pt,
  lang: "en",
)

#set par(
  justify: true,
  leading: 0.55em,
)

#let accent = rgb("#2f6f8f")
#let muted = rgb("#666666")
#let light = rgb("#d8e6ee")

#let link-text(body, url) = link(url)[#text(fill: accent)[#body]]

#let section(title) = {
  v(0.55em)
  text(size: 12pt, weight: "bold", fill: accent)[#title]
  v(-0.35em)
  line(length: 100%, stroke: 0.5pt + light)
  v(0.25em)
}

#let entry(title, meta: none, subtitle: none, body: none) = {
  text(weight: "bold")[#title]
  if meta != none {
    h(1fr)
    text(fill: muted)[#meta]
  }
  linebreak()
  if subtitle != none {
    text(style: "italic", fill: muted)[#subtitle]
    linebreak()
  }
  if body != none {
    body
  }
  v(0.35em)
}

#let bullet-list(items) = {
  list(
    marker: "•",
    tight: true,
    ..items.map(item => [#item])
  )
}

#let sidebar-block(title, body) = {
  text(size: 9pt, weight: "bold", fill: accent)[#title]
  v(0.15em)
  text(size: 8.3pt)[#body]
  v(0.75em)
}

#grid(
  columns: (28%, 1fr),
  gutter: 1.0cm,

  // Left column
  [
    #text(size: 22pt, weight: "bold")[Puyu Zhou]
    #v(0.2em)
    #text(size: 9.2pt, fill: muted)[PhD Candidate in Artificial Intelligence]
    #v(0.25em)
    #text(size: 8.6pt)[Faculty of Innovation Engineering]
    #linebreak()
    #text(size: 8.6pt)[Macau University of Science and Technology]
    #linebreak()
    #text(size: 8.6pt)[Macau, China]

    #v(1em)
    #line(length: 100%, stroke: 0.6pt + accent)
    #v(0.8em)

    #sidebar-block("Contact", [
      #link-text("puyuzhou@outlook.com", "mailto:puyuzhou@outlook.com") \
      #link-text("miachowwwww@gmail.com", "mailto:miachowwwww@gmail.com")
    ])

    #sidebar-block("Academic Profiles", [
      Google Scholar: #link-text("U6J9XTgAAAAJ", "https://scholar.google.com/citations?user=U6J9XTgAAAAJ&hl=zh-CN") \
      ORCID: #link-text("0000-0002-2361-2101", "https://orcid.org/0000-0002-2361-2101") \
      OpenReview: #link-text("Puyu Zhou", "https://openreview.net/profile?id=~Puyu_Zhou1")
    ])

    #sidebar-block("Online", [
      GitHub: #link-text("PUYUZHOU", "https://github.com/PUYUZHOU") \
      LinkedIn: #link-text("puyu-zhou-6953a4259", "https://www.linkedin.com/in/puyu-zhou-6953a4259/")
    ])

    #sidebar-block("Research Interests", [
      Neural Radiance Fields \
      Neural Rendering \
      3D Reconstruction \
      Scene Representation \
      3D City Modeling \
      Data-Centric Machine Learning \
      Healthcare AI \
      Financial Risk Prediction
    ])

    #sidebar-block("Technical Skills", [
      Python, PyTorch, CUDA \
      tiny-cuda-nn, scikit-learn \
      NumPy, pandas \
      Blender, Nerfstudio, COLMAP \
      Open3D, Gaussian Splatting tools \
      Linux, Git, GitHub, Docker \
      LaTeX, Overleaf, PyCharm
    ])

    #sidebar-block("Languages", [
      Chinese: Native \
      English: Fluent
    ])
  ],

  // Right column
  [
    #text(size: 15pt, weight: "bold")[Curriculum Vitae]
    #h(1fr)
    #text(size: 8pt, fill: muted)[Updated: 2026]
    #v(0.7em)

    #section("Profile")

    PhD candidate in Artificial Intelligence at Macau University of Science and Technology, working on neural scene representation, 3D reconstruction, and data-centric machine learning for interdisciplinary applications. My research focuses on Neural Radiance Fields, neural rendering, 3D city modeling, and robust experimental pipelines. I am currently seeking postdoctoral opportunities.

    #section("Education")

    #entry(
      "Macau University of Science and Technology",
      meta: "Sep. 2022 – Present",
      subtitle: "PhD in Artificial Intelligence, Faculty of Innovation Engineering, Macau, China",
      body: [
        Advisor: Prof. Jianqing Li. Research interests include neural scene representation, 3D reconstruction, neural rendering, and data-centric machine learning.
      ],
    )

    #entry(
      "Macau University of Science and Technology",
      meta: "Sep. 2020 – Jun. 2022",
      subtitle: "MSc in Management, School of Business, Macau, China",
      body: [
        Developed an interdisciplinary background connecting AI research with management, finance, and applied data modeling.
      ],
    )

    #section("Research Experience")

    #entry(
      "PhD Researcher",
      meta: "Sep. 2022 – Present",
      subtitle: "Macau University of Science and Technology, Macau, China",
      body: [
        #bullet-list((
          [Conduct doctoral research on neural scene representation, neural rendering, and 3D reconstruction.],
          [Develop research workflows for Neural Radiance Fields, 3D reconstruction, and scene representation.],
          [Build reproducible machine learning and computer vision pipelines for large-scale experiments.],
          [Explore interdisciplinary applications of machine learning in healthcare, finance, and spatial computing.],
        ))
      ],
    )

    #entry(
      "Researcher in 3D City Modeling and Neural Rendering",
      meta: "2025 – Present",
      subtitle: "Macau University of Science and Technology, Macau, China",
      body: [
        #bullet-list((
          [Participate in research on 3D city modeling, neural rendering, and scene-level representation learning.],
          [Study neural representation methods for urban-scale 3D scene modeling.],
          [Work on data processing, training, evaluation, and visualization workflows for 3D reconstruction systems.],
          [Focus on reliable experimental protocols and reproducible implementation.],
        ))
      ],
    )

    #entry(
      "Research Assistant",
      meta: "Apr. 2023 – Mar. 2025",
      subtitle: "Beijing Normal University, Zhuhai, China",
      body: [
        Supervisor: Prof. Ke Zhang. Conducted interdisciplinary research connecting artificial intelligence with collective behavior analysis in biological systems.

        #bullet-list((
          [Studied machine learning approaches for modeling collective behavior in biological systems.],
          [Contributed to interdisciplinary research connecting AI, behavioral analysis, and bio-inspired intelligence.],
        ))
      ],
    )

    #section("Publications")

    #entry(
      "Improving sepsis mortality prediction with machine learning: A comparative study of advanced classifiers and performance metrics",
      meta: "2025",
      subtitle: "Puyu Zhou, Jiazheng Duan, Jianqing Li. Advances in Clinical and Experimental Medicine.",
      body: [
        DOI: #link-text("10.17219/acem/194660", "https://doi.org/10.17219/acem/194660")
      ],
    )

    #entry(
      "TiF: A Multi-Scale Data Fusion and Fourier Encoding Framework for Financial Risk Prediction",
      meta: "2026",
      subtitle: "Haomin Zhang, Puyu Zhou. Journal of Forecasting.",
    )

    #entry(
      "Cabergoline Impairs Neural Network Efficiency: EEG-Based Evidence from Machine Learning Analysis and Preventive Implications for Cognitive Decline",
      meta: "2025",
      subtitle: "Puyu Zhou, Junjie Wang, Jiazheng Duan. American Journal of Preventive Medicine, 69(2), 107885.",
    )

    #section("Academic Service")

    #entry(
      "Student Volunteer",
      meta: "2025",
      subtitle: "SIGGRAPH Asia 2025, Hong Kong",
    )
  ],
)