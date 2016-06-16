source 'https://rubygems.org'
ruby '2.2.3'

gem 'rails', '4.2.6'

# authentication
gem 'devise', '3.5.6'
source "https://rails-assets.org" do
  gem "rails-assets-angular-devise"
end

# markup
gem 'haml-rails'
gem 'bootstrap-sass'
gem 'font-awesome-rails'

gem 'jquery-rails'
gem 'angularjs-rails'
gem 'angular-rails-templates'
gem 'jbuilder', '~> 2.0'

# pagination
gem 'will_paginate'
gem 'will_paginate-bootstrap'

gem 'paperclip', '4.3.6'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 5.0'
  gem 'coffee-rails', '~> 4.1.0'
  gem 'execjs'
  gem 'uglifier', '>= 1.3.0'
end

group :development do
  gem 'letter_opener'
  gem 'annotate'
  gem 'web-console', '~> 2.0'
end

group :development, :test do
  gem 'mysql2'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
