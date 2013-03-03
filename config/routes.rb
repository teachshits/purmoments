Purmoments::Application.routes.draw do
  root :to => 'main#index'

  match '/prizes' => 'main#prizes', :as => 'prizes'
  match '/rules' => 'main#rules', :as => 'rules'
  match '/terms_of_use' => 'main#terms_of_use', :as => 'terms_of_use'
  match '/privacy_policy' => 'main#privacy_policy', :as => 'privacy_policy'

  match '/challenges' => 'challenges#index', :as => 'challenges'


  mount AjoContact::Engine => '/contact'
  mount AjoRegister::Engine => '/'
end
