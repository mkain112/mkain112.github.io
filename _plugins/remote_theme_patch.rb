# _plugins/remote_theme_patch.rb
# Fixes MockGemspec bugs in jekyll-remote-theme when used with Chirpy

module Jekyll
  module RemoteTheme
    class MockGemspec
      # Accept any arguments to stay compatible with upstream calls
      def initialize(*args)
        # no-op
      end

      def version
        "0.0.0"
      end
    end
  end
end

