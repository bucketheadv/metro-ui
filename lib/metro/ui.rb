require "metro/ui/version"

module Metro
  module Ui
    # Your code goes here...
    class << self
      def load!
        if rails?
          require "metro/ui/engine"
        elsif sprockets?
          Sprockets.append_path(stylesheets_path)
          Sprockets.append_path(fonts_path)
          Sprockets.append_path(javascripts_path)
        end
      end

      def sprockets?
        defined?(::Sprockets)
      end

      def current_path
        File.expand_path("..", __FILE__)
      end

      def assets_path
        File.join(current_path, "app/assets")
      end

      ["stylesheets", "javascripts", "fonts"].each do |t|
        define_method("#{t}_path") do 
          File.join(assets_path, t)
        end
      end

      def rails?
        defined?(::Rails)
      end
    end
  end
end

Metro::Ui.load!
