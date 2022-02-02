class ApplicationController < ActionController::API

# Exception Handling
# This is done by creating an exception handler module, which is app/controllers/concerns/exception_handler.rb:
# Then add this line to app/controllers/application_controller.rb, just before the end statement:
  include ExceptionHandler

end
