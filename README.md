## 🧩 Chirpy Local Build and Deployment Flow

```mermaid
flowchart TD
    A[Start: Clone Chirpy Theme Locally] --> B[Install Ruby & Bundler]
    B --> C[Add Required Gems: jekyll-feed, jekyll-seo-tag, etc.]
    C --> D[Set theme: jekyll-theme-chirpy in _config.yml]
    D --> E[Remove Remote Theme Reference]
    E --> F[Clean _scss and assets/css Overrides]
    F --> G[Add Exclusions for Chirpy Example Content]
    G --> H[Run bundle exec jekyll serve Locally]
    H --> I{Build Succeeds?}
    I -- Yes --> J[Commit and Push to GitHub]
    I -- No --> F
    J --> K[Configure GitHub Actions Workflow for Pages]
    K --> L[Enable GitHub Pages (Settings → Pages)]
    L --> M[Site Live at mkain112.github.io ✅]
    M --> N[Optional: Map Custom Domain mitchellkain.com 🌐]

