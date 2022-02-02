

# REST Introduction and Authentication, 1.26.22
# Creating Controllers
# We need three controllers, one for user registration, one for session management, and one for testing logon. So, enter the following commands:
# Now edit app/controllers/test_controller.rb to match the following. You will see that it calls the method is_user_logged_in.
# This is just a test controller to verify that login works.
# Creating Controllers
class TestController < ApplicationController
  include AuthenticationCheck

  before_action :is_user_logged_in

  def show
    render json: { message: "If you see this, you're logged in!" },
      status: :ok
  end
end
# This is just a test controller to verify that login works.



# substituted w/ above 1.26.22
# class TestController < ApplicationController
# end
