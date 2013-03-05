Purmoments::Application.routes.draw do
  root :to => 'main#index'

  match '/prizes' => 'main#prizes', :as => 'prizes'
  match '/how_to_play' => 'main#how_to_play', :as => 'how_to_play'
  match '/terms_of_use' => 'main#terms_of_use', :as => 'terms_of_use'
  match '/privacy_policy' => 'main#privacy_policy', :as => 'privacy_policy'

  match '/sign_up_thank_you' => 'main#sign_up_thank_you', :as => 'after_sign_up'

  match '/optin' => 'main#optin', :as => 'double_opt_in'
  match '/opt_out/:id' => 'main#opt_out', :as => 'opt_out'
  match '/confirm_opt_in/:id' => 'main#confirm_opt_in', :as => 'confirm_opt_in'

  match '/opted_out/thank_you' => 'main#opt_out_thank_you', :as => 'opt_out_thank_you'
  match '/opt_in/thank_you' => 'main#opt_in_thank_you', :as => 'opt_in_thank_you'

  match '/challenges' => 'challenges#index', :as => 'challenges'
  match '/challenge/:id' => 'challenges#intro', :as => 'challenge_intro'
  match '/challenge/:id/play' => 'challenges#play', :as => 'play_challenge'
  match '/challenges_completed' => 'challenges#completed', :as => 'challenge_completed'

  mount AjoContact::Engine => '/contact'
  mount AjoRegister::Engine => '/'
end
