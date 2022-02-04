
# REST Introduction and Authentication, 1.26.22
# Adding Routes
# Now we need to configure routes for the controllers that have been created. config/routes.rb should be edited to match the following:

Rails.application.routes.draw do

  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  devise_for :users,
             controllers: {
                 sessions: 'users/sessions',
                 registrations: 'users/registrations'
             }
  get '/test', to: 'test#show'

  namespace :api do
  namespace :v1 do
    resources :members do
      resources :facts
    end
  end
end

end





# substituted w/ above 1.27.22
