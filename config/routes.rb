Tour::Application.routes.draw do
  match '/welcome(.:format)' => 'schedule_tours#welcome', :as => :welcome
  match 'schedule_tours/:id/thank_you' => 'schedule_tours#thank_you', :as => :thank_you
  match 'schedule_tours/create_tour' => 'schedule_tours#create_tour', :as => :create_tour, :via => 'post'
  match 'schedule_tours/:id/signup' => 'schedule_tours#signup', :as => :signup
  match 'schedule_tours/:id/create_signup' => 'schedule_tours#create_signup', :as => :create_signup, :via => 'post'
  match 'schedule_tours/:id/extra_details' => 'schedule_tours#extra_details', :as => :extra_details
  match 'schedule_tours/:id/create_extra_details' => 'schedule_tours#create_extra_details', :as => :create_extra_details, :via => 'post'
  match 'schedule_tours/:id/success' => 'schedule_tours#success', :as => :success
  match 'schedule_tours/:id/tour' => 'schedule_tours#tour', :as => :tour
  match 'schedule_tours/:id/rate' => 'schedule_tours#rate', :as => :rate, :via => 'post'
  root :to => 'schedule_tours#welcome'
end
