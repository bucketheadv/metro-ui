module Metro
  module Ui
    class Engine < ::Rails::Engine 
      initializer 'metro-ui.assets.precompile' do |app|
        %w(stylesheets javascripts fonts images).each do |sub|
          # app.config.assets.paths << root.join('assets', sub).to_s
        end
      end
    end
  end
end
