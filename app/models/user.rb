
# REST Introduction and Authentication, 1.26.22
# Creating the API Server Application
# Initial Setup
# Update the app/models/user.rb file as follows:

class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true

  devise :database_authenticatable,
         :jwt_authenticatable,
         :registerable,
         jwt_revocation_strategy: JwtDenylist
end







#supplanted w/ above 1.26.22
# class User < ApplicationRecord
#   # Include default devise modules. Others available are:
#   # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
#   devise :database_authenticatable, :registerable,
#          :recoverable, :rememberable, :validatable
# end
