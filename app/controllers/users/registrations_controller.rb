

# REST Introduction and Authentication, 1.26.22
# Creating Controllers
# We need three controllers, one for user registration, one for session management, and one for testing logon. So, enter the following commands:
# It is not really obvious what this controller does, but it overrides the Devise controller to handle JSON responses.
# This is the standard way of creating a method that will be accessible to a variety of controllers.
class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    register_success && return if resource.persisted?

    register_failed
  end

  def register_success
    render json: { message: 'Signed up sucessfully.' }, status: :created
  end

  def register_failed
    render json: { message: "Something went wrong." }, status: :bad_request
  end
end
# It is not really obvious what this controller does, but it overrides the Devise controller to handle JSON responses.



# substituted w/ above 1.26.22
# class Users::RegistrationsController < ApplicationController
# end
