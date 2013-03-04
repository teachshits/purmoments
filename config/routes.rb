Purmoments::Application.routes.draw do
  root :to => 'main#index'

  match '/prizes' => 'main#prizes', :as => 'prizes'
  match '/how_to_play' => 'main#how_to_play', :as => 'how_to_play'
  match '/terms_of_use' => 'main#terms_of_use', :as => 'terms_of_use'
  match '/privacy_policy' => 'main#privacy_policy', :as => 'privacy_policy'
  match '/optin' => 'main#optin', :as => 'double_opt_in'

  match '/opt_out/:id' => 'main#opt_out', :as => 'opt_out'
  match '/confirm_opt_in/:id' => 'main#confirm_opt_in', :as => 'confirm_opt_in'

  match '/opted_out/thank_you' => 'main#opt_out_thank_you', :as => 'opt_out_thank_you'
  match '/opt_in/thank_you' => 'main#opt_in_thank_you', :as => 'opt_in_thank_you'

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
