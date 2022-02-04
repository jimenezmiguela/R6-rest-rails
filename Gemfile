source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

# REST Introduction and Authentication, 1.26.22
# Creating the API Server Application
# Initial Setup
# You will need some additional gems. Add the following to your Gemfile. These settings should be added before the group development, test section.
gem 'devise'
gem 'devise-jwt'
gem 'rack-cors'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.3', '>= 6.1.3.2'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# 5.1.3 Adding Rspec and Swagger, 2.2.21
# Setting Up for Rspec and Swagger
# Add the following lines to your Gemfile:
# First, in the section before the group :development, :test line, add these lines to get the swagger gem:
gem 'rspec-rails'
gem 'rexml'
gem 'rswag'
# The rswag line is to add the swagger gem

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Setting Up for Rspec and Swagger, 2.2.21
# Add the following lines to your Gemfile:
# add a group :test section to your Gemfile, near the bottom, which should look like:

group :test do
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rails-controller-testing'
end
