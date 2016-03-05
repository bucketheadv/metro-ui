module Metro
  module Ui
    class Engine < ::Rails::Engine 
      initializer 'metro-ui.assets.precompile' do |app|
        %w(stylesheets javascripts fonts images).each do |sub|
          app.config.assets.paths << root.join('app/assets', sub).to_s
        end

        app.config.assets.precompile << %r(metro\.(?:eot|svg|ttf|woff)$)
        app.config.assets.precompile << %w(selection.json metro.min.js)
        app.config.assets.precompile << %w(*\.css)
      end
    end
  end
end
