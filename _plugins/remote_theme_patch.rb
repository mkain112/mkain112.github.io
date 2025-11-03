# _plugins/remote_theme_patch.rb
# Compatibility patch for Chirpy + Jekyll 4.4.x + jekyll-remote-theme
# Fixes missing MockGemspec behavior that breaks site builds on GitHub Pages.

module Jekyll
  module RemoteTheme
    class MockGemspec
      # Accepts any args passed by newer Jekyll versions
      def initialize(*args)
        # nothing needed
      end

      # Pretend the theme has no dependencies
      def runtime_dependencies
        []
      end

      # Return a fake version so Chirpy doesn't crash
      def version
        "0.0.0"
      end
    end
  end
end

