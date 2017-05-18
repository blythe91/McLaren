Rails.application.routes.draw do
  resources :people
  resources :registries
  resources :program_receptors
  get 'welcome/index'

  resources :training_workshops

  resources :spr_people do
    collection do
      get :recep_index
    end
  end

  resources :young_receptor  
    


  resources :advances
  resources :charges
  resources :groups
  resources :districts
  resources :regions
  resources :unities
  resources :specialties
  resources :structure_levels
  resources :training_levels
  resources :parishes
  resources :municipalities
  resources :states
  resources :document_types
  resources :academic_levels
  resources :nationalities
  resources :relationships
  resources :ocupations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'welcome#index'
end
