

# REST Introduction and Authentication, 1.26.22
# Creating Controllers
# It is not really obvious what this controller does, but it overrides the Devise controller to handle JSON responses.
# The same is true of app/controllers/users/sessions_controller.rb, which should be changed to match this:

class Users::SessionsController < Devise::SessionsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    if !resource.id.nil?
      response.set_header('Access-Control-Expose-Headers','authorization')
      render json: { message: 'You are logged in.' }, status: :created
    else
      render json: { message: 'Authentication failed.'}, status: :unauthorized
    end
  end

  def respond_to_on_destroy
    log_out_success && return if current_user

    log_out_failure
  end

  def log_out_success
    render json: { message: "You are logged out." }, status: :ok
  end

  def log_out_failure
    render json: { message: "Hmm nothing happened."}, status: :unauthorized
  end
end
# It is not really obvious what this controller does, but it overrides the Devise controller to handle JSON responses.







# substituted w/ above 1.26.22
# class Users::SessionsController < ApplicationController
# end
