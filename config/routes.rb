Rails.application.routes.draw do
  get 'shop/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index'

  resources :players
  resources :quests
  resources :weapons
  resources :shop do
  collection do
    get :randomize
    end
  end
  # delete '/quests/:id/delete_player', to: 'quests#delete_player', as: 'quest_delete_player'

  root 'welcome#index'
end
