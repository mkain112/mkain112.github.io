# frozen_string_literal: true

source "https://rubygems.org"

# Chirpy theme via GitHub remote theme
gem "github-pages", group: :jekyll_plugins
gem "jekyll-remote-theme" # allows loading cotes2020/jekyll-theme-chirpy
gem "jekyll-paginate"     # fixes pagination warning
gem "jekyll-archives"     # enables categories/tags
gem "webrick", "~> 1.8"   # needed for local testing with Ruby 3+

# Optional but nice for local link checking
gem "html-proofer", "~> 5.0", group: :test

platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

gem "wdm", "~> 0.2.0", :platforms => [:mingw, :x64_mingw, :mswin]
