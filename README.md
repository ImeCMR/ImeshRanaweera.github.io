# Imesh Ranaweera Academic Portfolio Website

A minimal, responsive academic portfolio website for Imesh Chamara Madusanka Ranaweera, PhD student in Chemistry at the University of Florida. The website is built with clean HTML and CSS and is designed for GitHub Pages deployment.

## Overview

This portfolio presents academic and research information including profile summary, research interests, research metrics, education, publications, teaching and academic experience, technical skills, awards, leadership, memberships, and contact links.

## File Structure

```text
your-portfolio/
├── index.html
├── LICENSE
├── README.md
├── robots.txt
├── sitemap.xml
├── style.css
└── assets/
    ├── Imesh_Ranaweera_CV.pdf   (auto-updated from Overleaf)
    └── profile.png
```

## Updating the CV

The CV is written in Overleaf and synced to this site automatically:

1. Edit the CV in Overleaf. That's it.
2. Every night, the `Update CV from Overleaf` GitHub Action clones the Overleaf project, compiles it, and commits `assets/Imesh_Ranaweera_CV.pdf` if the source changed.
3. To update right away: GitHub → **Actions** → **Update CV from Overleaf** → **Run workflow**.

One-time setup: create an Overleaf Git token (Overleaf → Account Settings → Git Integration) and save it as the repository secret `OVERLEAF_TOKEN` (GitHub → Settings → Secrets and variables → Actions).
