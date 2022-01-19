Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'

  get 'tasks', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: :task
# ---
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  delete 'tasks/:id', to: 'tasks#destroy'

  patch 'tasks/:id', to: 'tasks#update'

end

# primero debe existir una ruta
# la ruta debe decir lo siguiente: 
# vaya o dirigase a un nombre de controlador y luego busque en ese controlador si existe una accion llamada index
# si la accion existe vaya y compruebe si existe una vista(pagina web) llamada igual que la acción (index), 
# si la vista existe, muestrecela al usuario.