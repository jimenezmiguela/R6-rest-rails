
# REST Introduction and Authentication, 1.26.22
# Creating the API Server Application
# Initial Setup
# edit config/initializers/cors.rb to match the following:
# THis allows your server to accept REST requests from any origin. This is not a good general practice — you would want to specify the address of your front end application instead of * — but CORS is outside the scope of this lesson.
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'

    resource '*',
             headers: :any,
             methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
# THis allows your server to accept REST requests from any origin. This is not a good general practice — you would want to specify the address of your front end application instead of * — but CORS is outside the scope of this lesson.











#supplanted w/ above 1.26.22
# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

# Rails.application.config.middleware.insert_before 0, Rack::Cors do
#   allow do
#     origins 'example.com'
#
#     resource '*',
#       headers: :any,
#       methods: [:get, :post, :put, :patch, :delete, :options, :head]
#   end
# end
