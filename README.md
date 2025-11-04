# 🧩 Chirpy Local Build and Deployment Flow

This diagram summarizes how I got the **Chirpy Jekyll theme** working locally, debugged missing asset and SCSS issues, and deployed it successfully to **GitHub Pages** (and later to my custom domain [mitchellkain.com](https://mitchellkain.com)).

```mermaid
graph TD;
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

---

## 🧠 How to Deploy Locally & to GitHub Pages

1. **Install dependencies**
   ```bash
   sudo apt install ruby-full build-essential zlib1g-dev
   gem install bundler jekyll
   ```

2. **Clone your repo**
   ```bash
   git clone https://github.com/mkain112/mkain112.github.io
   cd mkain112.github.io
   ```

3. **Install gems**
   ```bash
   bundle install
   ```

4. **Run locally**
   ```bash
   bundle exec jekyll serve
   ```
   → Open [http://localhost:4000](http://localhost:4000)

5. **Push to GitHub**
   ```bash
   git add .
   git commit -m "Update site"
   git push origin main
   ```

6. **Deploy**
   - Go to **Settings → Pages**
   - Select **GitHub Actions** as your build source
   - Wait for the workflow to finish — your site goes live!

---
