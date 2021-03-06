source 'https://rubygems.org'
ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'


# ===~===~===~===~===~===~===~===~===~===
### ALL ENVIRONMENTS:
gem 'thin'
# gem 'unicorn'                           # Use unicorn as the app server
# gem 'bcrypt-ruby', '~> 3.0.0'           # Use ActiveModel has_secure_password
gem 'jbuilder', '~> 1.2'                  # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'figaro'


# ===~===~===~===~===~===~===~===~===~===
### ASSET GEMS:
gem 'haml-rails'
gem 'sass-rails', '~> 4.0.0'              # Use SCSS for stylesheets
gem 'bootstrap-sass'
gem 'compass-rails'
gem 'uglifier', '>= 1.3.0'                # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.0.0'            # Use CoffeeScript for .js.coffee assets and views
gem 'jquery-rails'                        # Use jquery as the JavaScript library
# gem 'therubyracer', platforms: :ruby    # See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'turbolinks'                          # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'simple_form'


# ===~===~===~===~===~===~===~===~===~===
### MIXED ENVIRONMENTS:
# gem 'debugger', group: [:development, :test]  # Use debugger


# ===~===~===~===~===~===~===~===~===~===
# ===~===~===~===~===~===~===~===~===~===
group :development do
  gem 'pg'                                # Use pg as the database for Active Record
  gem 'quiet_assets'
  gem 'awesome_print'
  gem 'better_errors'
    gem 'binding_of_caller'
  gem 'meta_request'                      # http://goo.gl/7ToXW
  # gem 'capistrano', group: :development # Use Capistrano for deployment
end


# ===~===~===~===~===~===~===~===~===~===
group :production, :staging do
  gem 'pg'
  gem 'rails_12factor'
end


# ===~===~===~===~===~===~===~===~===~===
group :test do
  gem 'pg'
end


# ===~===~===~===~===~===~===~===~===~===
group :doc do
  gem 'sdoc', require: false              # bundle exec rake doc:rails generates the API under doc/api.
end


# ===~===~===~===~===~===~===~===~===~===
# ===~===~===~===~===~===~===~===~===~===
# ===~===~===~===~===~===~===~===~===~===