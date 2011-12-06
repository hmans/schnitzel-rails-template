initializer 'generators.rb', <<-EOD
Rails.application.config.generators do |g|
  g.orm             :active_record
  g.template_engine :haml
  g.test_framework  :rspec, :fixture => false
  g.stylesheets     false
  g.fixture_replacement :fabrication
end
EOD

inject_into_file 'Gemfile', <<-EOD, :after => "# gem 'rails',     :git => 'git://github.com/rails/rails.git'\n"
gem 'inherited_resources'
gem 'haml-rails'
EOD

append_file 'Gemfile', <<-EOD
group :development, :test do
  gem 'rspec-rails', '>= 2.0.1'
  gem 'fabrication'
  gem 'ffaker'
  gem 'shoulda-matchers'
end
EOD

run 'bundle install'
generate 'rspec:install'

# Replace application layout with a HAML version
remove_file 'app/views/layouts/application.html.erb'
create_file 'app/views/layouts/application.html.haml', <<-EOD
!!!
%html
  %head
    %title #{app_name}
    = stylesheet_link_tag :application
    = javascript_include_tag :application
    = csrf_meta_tags
  %body
    = yield
EOD

remove_file 'public/index.html'

# Create a git repository and add everything so far.
#
git :init
git :add => '.'
git :commit => "-m 'Initial import. Schnitzel is GO!'"

