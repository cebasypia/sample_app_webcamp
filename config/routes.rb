Rails.application.routes.draw do
  get 'todolists/new'
  get 'top' => 'homes#top'

  get 'todolists' => 'todolists#index'
  post 'todolists' => 'todolists#create'

  get 'todolists/:id' => 'todolists#show', as: 'todolist'
  patch 'todolists/:id' => 'todolists#update', as:'update_todolist'
  delete 'todolists/:id' => 'todolists#destroy', as:'destroy_todolist'

  get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_todolist'

end
