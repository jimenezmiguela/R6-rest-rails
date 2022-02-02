
# Back End Lesson 5.1: REST APIs in Rails
# 5.1.2 More REST for CRUD Operations
# More REST APIs
# Models

class Member < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  has_many :facts
end



# substituted w/ above 1.28.22
# class Member < ApplicationRecord
# end
