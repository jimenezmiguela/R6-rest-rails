
# Back End Lesson 5.1: REST APIs in Rails
# 5.1.2 More REST for CRUD Operations
# More REST APIs
# Models

class Fact < ApplicationRecord
  validates :fact_text, presence: true
  validates :likes, presence: true
  validates :member_id, presence: true
  validates_associated :member
  belongs_to :member
end

# substituted w/ above 1.28.22
# class Fact < ApplicationRecord
#   belongs_to :member
# end
