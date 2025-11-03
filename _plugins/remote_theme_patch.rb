# _plugins/remote_theme_patch.rb
# Patch to fix "undefined method `version` for MockGemspec" in remote_theme builds

module Jekyll
  module RemoteTheme
    class MockGemspec
      def version
        "0.0.0"
      end
    end
  end
end

