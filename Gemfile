# frozen_string_literal: true

source "https://rubygems.org"

# Core Jekyll (Chirpy requires 4.x)
gem "jekyll", "~> 4.4"

# Required plugins
gem "jekyll-remote-theme"   # load cotes2020/jekyll-theme-chirpy remotely
gem "jekyll-paginate"       # blog pagination
gem "jekyll-archives"       # categories & tags
gem "jekyll-seo-tag"        # SEO tags
gem "jekyll-sitemap"        # sitemap.xml generation
gem "jekyll-feed"           # RSS feed
gem "jekyll-include-cache"  # improves Chirpy performance
gem "webrick", "~> 1.8"     # local server for Ruby 3+

# Optional testing utilities
gem "html-proofer", "~> 5.0", group: :test

platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

gem "wdm", "~> 0.2.0", :platforms => [:mingw, :x64_mingw, :mswin]
