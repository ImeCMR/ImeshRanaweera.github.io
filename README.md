# Imesh Ranaweera — Academic CV Website

Academic CV website and PDF for **Imesh Chamara Madusanka Ranaweera**, PhD student in Theoretical and Computational Chemistry at the University of Florida.

Built with [MyST Markdown](https://mystmd.org/), automatic CV PDF generation via [Typst](https://typst.app/) and [modern-cv](https://typst.app/universe/package/modern-cv/), blog support with RSS feeds, and automated deployment via GitHub Actions.

## Features

- **MyST Markdown** source format with Jupyter notebook integration
- **Automatic CV PDF generation** from website content using Typst and modern-cv
- **Blog** with RSS and Atom feed generation (ready for future posts)
- **GitHub Pages** deployment on push to `main`
- **Netlify PR previews** for pull request review
- **Pre-commit hooks**: Black, codespell, nbstripout for code quality

## Project Structure

```
.
├── myst.yml                    # MyST configuration
├── index.md                    # Landing page (bio, highlights, news)
├── custom.css                  # Custom CSS styling
├── requirements.txt            # Python dependencies
├── generate_cv.py              # CV PDF generation script
├── generate_rss.py             # RSS/Atom feed generation script
├── inject_comments.py          # Giscus comment injection script
├── Dockerfile                  # Docker build for full site
├── logo.png                    # Site logo (replace with headshot)
├── fav.ico                     # Favicon
├── CNAME                       # Custom domain (optional)
├── pages/                      # Site content
│   ├── about.md                # Biography, education, appointments, research experience
│   ├── research.md             # Research areas, publications
│   ├── software.md             # Software & Skills (programming, scientific software, lab skills)
│   ├── teaching.md             # Teaching experience (TA roles, courses)
│   ├── talks.md                # Presentations and academic activities
│   ├── awards.md               # Awards, certifications, language proficiency
│   ├── services.md             # Leadership and service
│   ├── contact.md              # Contact information, languages, references
│   ├── news.md                 # News log by year
│   ├── blog.md                 # Blog landing page
│   └── images/                 # Shared images
├── blog/                       # Blog posts (add .md files here)
├── .pre-commit-config.yaml     # Pre-commit hook configuration
├── CONTRIBUTING.md             # Contribution guidelines
├── CONDUCT.md                  # Code of conduct
└── .github/workflows/
    ├── build.yml               # PR preview builds (Netlify)
    └── deploy.yml              # Production deployment (GitHub Pages)
```

## Customization

### Site Metadata

Edit `myst.yml`:

- `project.title`: your name
- `project.description`: site description
- `project.keywords`: your research keywords
- `site.parts.footer`: footer links (CV PDF, social profiles)

### Author Information for CV PDF

Edit the `gen_preamble()` function in `generate_cv.py`:

- `firstname`, `lastname`: your name
- `email`, `phone`, `homepage`: contact details
- `github`: GitHub username
- `address`: office address
- `positions`: job titles
- `custom`: social media and academic profile links

### Adding Pages

1. Create a new `.md` file in `pages/`
2. Add the file to `project.toc` in `myst.yml`

### Adding Blog Posts

1. Create a new `.md` file in `blog/` with frontmatter (title, date, authors, description, tags)
2. Add a card entry in `pages/blog.md` linking to the new post

### Key Files to Update for Future Edits

| Content | File |
|---------|------|
| Bio, highlights, research interests | `index.md` |
| Biography, education, appointments, research experience | `pages/about.md` |
| Research areas, publications | `pages/research.md` |
| Programming, scientific software, lab skills | `pages/software.md` |
| Teaching/TA roles, courses | `pages/teaching.md` |
| Presentations | `pages/talks.md` |
| Awards, certifications, language proficiency | `pages/awards.md` |
| Leadership, service | `pages/services.md` |
| Contact, languages, references | `pages/contact.md` |
| News/milestones | `pages/news.md` |
| Blog posts | `blog/*.md` + `pages/blog.md` |
| CV PDF author info | `generate_cv.py` (gen_preamble) |
| RSS feed metadata | `generate_rss.py` |
| Site title, description, navigation | `myst.yml` |

## Building Locally

### Prerequisites

- Python 3.10+
- Node.js 18+ (for MyST)
- [Typst](https://typst.app/) CLI (for PDF)
- Font Awesome 6 desktop fonts (OTF) and Source Sans Pro in a `fonts/` directory (for PDF)

### Build HTML Website

```bash
# Install Python dependencies
pip install -r requirements.txt

# Install MyST Markdown
npm install -g mystmd

# Build HTML site
myst build --html
```

The built site will be in `_build/html/`. Preview locally with `myst start`.

### Build CV PDF

```bash
# 1. Download required fonts (one-time setup)
mkdir -p fonts

# Source Sans Pro (body font)
curl -sL "https://github.com/adobe-fonts/source-sans-pro/releases/download/3.006R/source-sans-pro-3.006R.zip" -o source-sans-pro.zip
unzip -o source-sans-pro.zip -d /tmp/ssp
cp /tmp/ssp/source-sans-pro-3.006R/OTF/*.otf fonts/

# Font Awesome 6 (icons)
curl -sL "https://use.fontawesome.com/releases/v6.7.2/fontawesome-free-6.7.2-desktop.zip" -o fa.zip
unzip -o fa.zip -d /tmp/fa
cp /tmp/fa/fontawesome-free-6.7.2-desktop/otfs/*.otf fonts/

# 2. Generate Typst source from markdown content
python generate_cv.py

# 3. Compile to PDF
typst compile cv.typ cv.pdf --font-path ./fonts --ignore-system-fonts
```

The PDF will be generated as `cv.pdf` in the repository root.

The `generate_cv.py` script reads content from:
- `pages/about.md` (education, appointments, research experience)
- `pages/research.md` (research areas, publications)
- `pages/software.md` (software & skills)
- `pages/teaching.md` (teaching experience)
- `pages/talks.md` (presentations)
- `pages/awards.md` (awards & certifications)
- `pages/services.md` (leadership & service)

### Generate RSS/Atom Feeds

```bash
pip install feedgen pyyaml
python generate_rss.py
```

Reads frontmatter from `blog/*.md` and writes `rss.xml` and `atom.xml` to the repository root.

### Building with Docker

Build and serve the site without installing any dependencies locally:

```bash
docker build -t imesh-cv .
docker run --rm -p 3000:3000 -p 3100:3100 imesh-cv
```

Then open http://localhost:3000 in your browser. If port 3000 is already in use, map to different ports (e.g., `-p 3001:3000 -p 3101:3100` and open http://localhost:3001). The Docker image includes Node.js, Python, Typst, and all required fonts.

## Deployment

### GitHub Pages (production)

Pushes to `main` trigger the `deploy.yml` workflow, which:

1. Builds the HTML site with MyST
2. Generates `rss.xml` and `atom.xml` from blog posts
3. Generates `cv.typ` from markdown content
4. Compiles `cv.pdf` with Typst
5. Injects Giscus comments into blog posts
6. Deploys everything to GitHub Pages

The CV PDF will be available at `https://<your-github-username>.github.io/<repo-name>/cv.pdf`.

### Netlify (PR previews)

Pull requests trigger the `build.yml` workflow for preview deployments. Requires `NETLIFY_AUTH_TOKEN` and `NETLIFY_SITE_ID` secrets.

## GitHub Secrets

| Secret | Purpose |
|--------|---------|
| `NETLIFY_AUTH_TOKEN` | Netlify authentication for PR previews |
| `NETLIFY_SITE_ID` | Netlify site ID for PR previews |

## Personal Links

- **GitHub**: https://github.com/ImeCMR
- **LinkedIn**: https://www.linkedin.com/in/imesh-chamara/
- **Email**: imesh.ranaweera@ufl.edu

## License

[MIT](LICENSE)