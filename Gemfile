# frozen_string_literal: true

source "https://rubygems.org"

# Use Jekyll directly (v4.x is required for Chirpy)
gem "jekyll", "~> 4.4"

# Chirpy is loaded remotely
gem "jekyll-remote-theme"
gem "jekyll-paginate"
gem "jekyll-archives"
gem "webrick", "~> 1.8"

# Optional testing utilities
gem "html-proofer", "~> 5.0", group: :test

platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

gem "wdm", "~> 0.2.0", :platforms => [:mingw, :x64_mingw, :mswin]
