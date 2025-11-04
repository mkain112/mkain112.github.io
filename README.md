## 🧩 Chirpy Local Build and Deployment Flow

This diagram summarizes how I got the **Chirpy Jekyll theme** working locally, debugged missing asset and SCSS issues, and deployed it successfully to **GitHub Pages** (and later to my custom domain [mitchellkain.com](https://mitchellkain.com)).

```mermaid
flowchart TD;
    A[Start: Clone Chirpy theme locally] --> B[Install Ruby and Bundler]
    B --> C[Add required gems: jekyll-feed, jekyll-seo-tag, etc.]
    C --> D[Set theme: jekyll-theme-chirpy in _config.yml]
    D --> E[Remove remote theme reference]
    E --> F[Clean _scss and assets/css overrides]
    F --> G[Add exclusions for example content]
    G --> H[Run "bundle exec jekyll serve" locally]
    H --> I{Build successful?}
    I -- Yes --> J[Commit and push to GitHub]
    I -- No --> F
    J --> K[Configure GitHub Actions workflow for Pages]
    K --> L[Enable GitHub Pages in repository settings]
    L --> M[Site live at mkain112.github.io ✅]
    M --> N[Optional: map custom domain mitchellkain.com 🌐]
```
