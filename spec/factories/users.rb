
# Factories and RSpec Tests
# You will need FactoryBot factories for test user, member, and fact entries. Create spec/factories/users.rb as follows:

require 'faker'

FactoryBot.define do
  factory :user do |f|
    f.email { Faker::Internet.email }
    f.password { Faker::Internet.password }
  end
end
