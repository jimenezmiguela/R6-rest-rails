
# REST Introduction and Authentication, 1.26.22
# Creating the API Server Application
# Initial Setup
# The migration file you have created, in db/migrate, should be edited to match this:

class CreateJwtDenylist < ActiveRecord::Migration[6.1]
  def change
    create_table :jwt_denylist do |t|
      t.string :jti, null: false
      t.datetime :exp, null: false
    end
    add_index :jwt_denylist, :jti
  end
end





#supplanted with above, 1.26.22
# class CreateJwtDenylist < ActiveRecord::Migration[6.1]
#   def change
#     create_table :jwt_denylists do |t|
#
#       t.timestamps
#     end
#   end
# end
