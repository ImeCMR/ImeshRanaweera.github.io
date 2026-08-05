#import "@preview/modern-cv:0.9.0": *

// Use Font Awesome 6 icons and replace "Résumé" with "CV" in footer
#fa-version("6")
#show "Résumé": "CV"

#show: resume.with(
  font: ("Source Sans Pro",),
  header-font: "Source Sans Pro",
  author: (
    firstname: "Imesh",
    lastname: "Chamara Madusanka Ranaweera",
    email: "imesh.ranaweera@ufl.edu",
    phone: "",
    homepage: "https://github.com/ImeCMR",
    github: "ImeCMR",
    address: "Department of Chemistry, University of Florida, Gainesville, FL 32611, USA",
    positions: (
      "PhD Student, Theoretical and Computational Chemistry",
      "Graduate Research Assistant",
    ),
    custom: (
      (text: "imesh.ranaweera@ufl.edu", icon: "envelope", link: "mailto:imesh.ranaweera@ufl.edu"),
      (text: "Imesh Chamara", icon: "linkedin", link: "https://www.linkedin.com/in/imesh-chamara/"),
      (text: "ImeCMR", icon: "github", link: "https://github.com/ImeCMR"),
    ),
  ),
  profile-picture: none,
  date: datetime.today().display(),
  language: "en",
  paper-size: "us-letter",
  accent-color: default-accent-color,
  colored-headers: true,
  show-footer: true,
)

// Enable PDF bookmarks for section navigation
#set heading(bookmarked: true)

// Set PDF document title
#set document(title: "Imesh Chamara Madusanka Ranaweera - CV")

= Education


#resume-entry(
  title: [*PhD in Chemistry (Reading)*],
  location: [University of Florida, College of Liberal Arts and Sciences, USA],
  date: [2024--Present],
  description: [Cumulative GPA: 4.00. Selected coursework: Chemical Bonding and Spectra 1, Computational Chemistry, AI in Biology, Statistical Thermodynamics, Biological System Modelling, AI in Agricultural and Life Sciences],
)

#resume-entry(
  title: [*BSc (Hons) in Computational Chemistry*],
  location: [University of Colombo, Faculty of Science, Sri Lanka],
  date: [2019--2023],
  description: [GPA: 3.69/4.00. Class: Second Class Honors – Upper Division. *Chemistry coursework:* Computational Chemistry, Computational Programming in Chemistry, Advanced Molecular Modeling, Physical Chemistry, Biochemistry, Organic Chemistry, Inorganic Chemistry, Spectroscopy, Organometallic Chemistry. *Computing/Data coursework:* Machine Learning and Neural Computing, Data Structures and Algorithms, Database Systems, Fundamentals of Software Engineering, Data Analytics, Computational Biology, Logic Programming],
)

#resume-entry(
  title: [*G.C.E. Advanced Level Examination*],
  location: [Ananda College, Sri Lanka],
  date: [2017],
  description: [Biology A, Chemistry B, Physics B. Z Score: 1.6644],
)

#resume-entry(
  title: [*G.C.E. Ordinary Level Examination*],
  location: [Ananda College, Sri Lanka],
  date: [2014],
  description: [Nine Distinctions],
)

= Academic Appointments


#resume-item[
  - 2026 May -- Present: Graduate Research Assistant, Department of Chemistry, University of Florida, USA (Molecular Recognition Group / Perez Lab)
  - 2024 Aug -- 2026 May: Graduate Teaching Assistant, Department of Chemistry, University of Florida, USA
  - 2024 Mar -- 2024 Jul: Teaching Assistant (Visiting), Department of Chemistry, CINEC Campus, Sri Lanka
  - 2023 Aug -- 2024 Jul: Teaching Assistant, Department of Computation and Intelligent Systems, University of Colombo School of Computing, Sri Lanka
]

= Research Areas

#resume-skill-item(
  "Research Focus",
  ("**Computational Chemistry** — Molecular dynamics simulations, force field development, free energy calculations, enhanced sampling methods", "**Drug Discovery** — Structure-based drug design, solubility enhancement via hydrotropes, protein-ligand binding, compound property prediction", "**Machine Learning** — Neural networks for force fields, property prediction, protein structure prediction (AlphaFold, BioEmu), deep learning for molecular modeling", "**Artificial Intelligence** — AI applications in computational chemistry and biology, large language models for scientific discovery"),
)

= Patents

#resume-item[
  - _None at this time._
]

= Awards & Honors


#resume-item[
  - 2026: Fundamentals of Deep Learning — NVIDIA
  - 2026: Research Security Training (Combined) — CITI Program
  - 2026: Research Security Training — CITI Program
  - 2026: Physical and Natural Sciences Responsible Conduct of Research Course — CITI Program
  - 2024: Supervised Machine Learning: Regression and Classification — DeepLearning.AI
  - 2023: Introduction to Artificial Intelligence — IBM
  - 2023: Drug Discovery — University of California San Diego
  - 2023: Introduction to Quantum Computing — Udemy
  - 2022: Champions — Inter-university Chemistry Magic Competition
  - 2022: Observation of Near-Earth Objects and Main Belt Asteroids through Analysis of Pan-STARRS Images
  - 2021: Observation of Near-Earth Objects and Main Belt Asteroids through Analysis of Pan-STARRS Images
  - 2020: Observation of Near-Earth Objects and Main Belt Asteroids through Analysis of Pan-STARRS Images
]

= Refereed Publications



== 2026

#resume-item[
  - *I.C.M. Ranaweera*, A. Perez (2026). "Beyond Classical Force Fields: Physics-Driven Assessment of the Grappa Machine-Learned Force Field on the FoldBind Dataset." _ChemPhysChem_. DOI: #link("https://doi.org/10.1002/cphc.202500815")[10.1002/cphc.202500815]
]

== 2023

#resume-item[
  - *I.C.M. Ranaweera*, S. Weerasinghe (2023). "Investigation of the effects of selected hydrotropes on the solubility of drug-like molecules from Sri Lankan flora: a computational approach." _79th SLAAS Annual Scientific Session_, Sri Lanka. (Abstract published)
]

= Grants

= Open-Source Software

#resume-item[
  - *Programming Languages*: Python, Fortran, SQL, Machine Learning & Neural Networks (#box(baseline: 1pt, fa-icon("github", fill: color-darknight)) #link("https://github.com/ImeCMR")[ImeCMR])
  - *Molecular Dynamics & Simulation*: GROMACS, AMBER, MELD, MDANCE (#box(baseline: 1pt, fa-icon("github", fill: color-darknight)) #link("https://github.com/ImeCMR")[ImeCMR])
  - *Protein Structure Prediction*: AlphaFold, BioEmu, aSAM (#box(baseline: 1pt, fa-icon("github", fill: color-darknight)) #link("https://github.com/ImeCMR")[ImeCMR])
  - *Quantum Chemistry*: Gaussian 09W, GaussView 5.0, ORCA, BURAI, WinMopac 7.21 (#box(baseline: 1pt, fa-icon("github", fill: color-darknight)) #link("https://github.com/ImeCMR")[ImeCMR])
  - *Visualization & Analysis*: PyMOL, VMD, RasMol/RasWin, Xmgrace, ChemDraw (#box(baseline: 1pt, fa-icon("github", fill: color-darknight)) #link("https://github.com/ImeCMR")[ImeCMR])
  - *Laboratory & Instrumentation*: Computational chemistry, UV-Vis, Centrifuge, pH meter, Sonicator (#box(baseline: 1pt, fa-icon("github", fill: color-darknight)) #link("https://github.com/ImeCMR")[ImeCMR])
]

= Teaching

== Self-Paced Online Courses

#resume-item[
  - —: —, —
]

== Courses at University of Florida

#resume-item[
  - CHM 2045: General Chemistry 1 (Fall 2024, Spring 2025)
  - CHM 3400: Physical Chemistry for the Biosciences (Fall 2024)
  - CHM 2047: Honors General Chemistry 1 for Majors (Spring 2025)
]

== Courses at CINEC Campus

#resume-item[
  - —: Certificate Course in Computational Chemistry: Computer Aided Drug Design (Spring 2024)
]

== Courses at University of Colombo School of Computing

#resume-item[
  - —: Introduction to Computing (Fall 2023, Spring 2024)
  - —: Data Structures and Algorithms (Fall 2023, Spring 2024)
  - —: Programming and Problem Solving (Fall 2023, Spring 2024)
  - —: Rapid Application Development (Fall 2023, Spring 2024)
  - —: Middleware Architecture (Fall 2023, Spring 2024)
]

= Mentoring

== Current Students


== Past Students


= Workshops

= Invited Talks

(5 invited talks at academic institutions)

== 2026

#resume-item[
  - *Beyond Classical Force Fields: Physics-Driven Assessment of the Grappa Machine-Learned Force Field on the FoldBind Dataset* — Oral presentation, University of Florida, USA
  - *Investigation of the effects of selected hydrotropes on the solubility of drug-like molecules from Sri Lankan flora: a computational approach* — Oral presentation, University of Florida, USA
]

== 2023

#resume-item[
  - *Team Interview of Prof. Rodolphe Barrangou* — CH 4002 Seminar and Essay, University of Colombo, Sri Lanka
]

== 2022

#resume-item[
  - *Biochemistry of Human Hair* — Oral presentation, University of Colombo, Sri Lanka
  - *Fortran 95 Program to Simulate a Model Salt in Liquid Ar* — CH 3032 Computational Programming in Chemistry, University of Colombo, Sri Lanka
]

= Conference Proceedings

#resume-item[
  - _None at this time._
]

= Conference Presentations

= Professional Services


= Institutional Services


== University Leadership (University of Colombo)


#resume-item[
  - 2022–2023: Vice President, Chemical Society, University of Colombo
  - 2019–2023: Member, Leo Club, University of Colombo
  - 2019–2023: Member, Astronomical Society, University of Colombo
]

== School Leadership (Ananda College)


#resume-item[
  - 2015–2017: Senior Member, Science Union of Ananda College
  - 2015–2017: Senior Member, Biological Society of Ananda College
  - 2011–2013: Member, Saukyadana Unit of Ananda College
]

= Disciplinary Services
