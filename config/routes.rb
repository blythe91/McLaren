Rails.application.routes.draw do
  resources :people
  resources :spr_people
  resources :registries
  resources :advances
  resources :charges
  resources :groups
  resources :districts
  resources :regions
  resources :unities
  resources :specialties
  resources :structure_levels
  resources :training_levels
  resources :adults
  resources :parishes
  resources :municipalities
  resources :states
  resources :document_types
  resources :academic_levels
  resources :nationalities
  resources :relationships
  resources :ocupations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
