Purmoments::Application.routes.draw do
  root :to => 'main#index'

  match '/prizes' => 'main#prizes', :as => 'prizes'
  match '/rules' => 'main#rules', :as => 'rules'
  match '/terms_of_use' => 'main#terms_of_use', :as => 'terms_of_use'
  match '/privacy_policy' => 'main#privacy_policy', :as => 'privacy_policy'

  match '/challenges' => 'challenges#index', :as => 'challenges'
  match '/challenge_one' => 'challenges#challenge_one', :as => 'challenge_one'
  match '/challenge_two' => 'challenges#challenge_two', :as => 'challenge_two'
  match '/challenge_three' => 'challenges#challenge_three', :as => 'challenge_three'
  match '/challenge_four' => 'challenges#challenge_four', :as => 'challenge_four'
  match '/challenge_five' => 'challenges#challenge_five', :as => 'challenge_five'
  match '/challenge_six' => 'challenges#challenge_six', :as => 'challenge_six'

  mount AjoContact::Engine => '/contact'
  mount AjoRegister::Engine => '/'
end
