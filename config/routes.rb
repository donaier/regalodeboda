Regalodeboda::Application.routes.draw do
  
  resources :regalos

  match '/wirsinds' => 'regalos#admin_index'

  root :to => 'welcome#index'
end
