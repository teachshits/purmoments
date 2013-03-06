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

  match '/facebook' => 'facebook#index', :as => 'facebook_root'
  match '/facebook/prizes' => 'facebook#prizes', :as => 'facebook_prizes'
  match '/facebook/how_to_play' => 'facebook#how_to_play', :as => 'facebook_how_to_play'
  match '/facebook/contact' => 'facebook#contact', :as => 'facebook_contact'
  match '/facebook/contact_thank_you' => 'facebook#contact_thank_you', :as => 'facebook_contact_thank_you'
  match '/facebook/word_of_the_day' => 'facebook#word_of_the_day', :as => 'facebook_word_of_the_day'
  match '/facebook/share' => 'facebook#share', :as => 'facebook_share'
  match'/facebook/share_thank_you' => 'facebook#share_thank_you', :as => 'facebook_share_thank_you'

  match '/facebook/channel.html' => 'facebook#channel', :as => 'facebook_channel'

  mount AjoContact::Engine => '/contact'
  mount AjoRegister::Engine => '/'
end
