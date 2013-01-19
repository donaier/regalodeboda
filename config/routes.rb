Regalodeboda::Application.routes.draw do
  
  resources :regalos
  resources :candidatos, :only => [:index, :new, :create, :destroy]

  match '/wirsinds' => 'welcome#admin'
  match '/regalo_admin' => 'regalos#admin_index'

  root :to => 'welcome#index'
end
