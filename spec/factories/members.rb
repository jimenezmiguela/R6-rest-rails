

# 5.1.3 Adding Rspec and Swagger
# Factories and RSpec Tests

require 'faker'

FactoryBot.define do
  factory :member do |f|
    f.first_name { Faker::Name.name }
    f.last_name { Faker::Lorem.word }
  end
end
