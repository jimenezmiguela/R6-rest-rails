#Miguel note, right-click created
# REST Introduction and Authentication, 1.26.22
# Creating Controllers
# We need three controllers, one for user registration, one for session management, and one for testing logon. So, enter the following commands:
# In general, REST operations other than registration and logon require authentication. So we need a method to verify that a user has been authenticated. We create that method in app/controllers/concerns/authentication_check.rb, as follows:
# This is the standard way of creating a method that will be accessible to a variety of controllers.
#John, 1.27.22:  This is not a controller, it is a module mixin to be called by controllers, so you don't do generate controller for it
module AuthenticationCheck
  extend ActiveSupport::Concern

  def is_user_logged_in
    if current_user.nil?
      render json: { message: "No user is authenticated." },
        status: :unauthorized
    end
  end
end
