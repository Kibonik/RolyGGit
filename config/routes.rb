Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index'

  resources :players
  resources :quests
  delete '/quests/:id/delete_player', to: 'quests#delete_player', as: 'quest_delete_player'

  root 'welcome#index'
end
