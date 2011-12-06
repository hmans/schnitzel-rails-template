initializer 'generators.rb', <<-EOD
Rails.application.config.generators do |g|
  g.orm             :active_record
  g.template_engine :haml
  g.test_framework  :rspec, :fixture => false
  g.stylesheets     false
  g.fixture_replacement :fabrication
end
EOD

# add our favourite gems
gem 'inherited_resources'
gem 'haml-rails'

gem 'rspec-rails', '>= 2.0.1', :group => [:development, :test]
gem 'fabrication', :group => [:development, :test]
gem 'ffaker', :group => [:development, :test]
gem 'shoulda-matchers', :group => [:development, :test]

run 'bundle install'
generate 'rspec:install'
