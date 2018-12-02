Rails.application.routes.draw do
  get '/', to: 'users#indexLogSensor'
  resources :users
  get '/myGroups', to: 'groups#all', as: 'mygroups'
  post '/myGroupsSave', to: 'groups#new', as: 'saveNewGroup'
  get '/myGroupsEdit/:id', to: 'groups#edit', as: 'editGroup'
  post '/myGroupsEdit', to: 'groups#editPost', as: 'editGroupPost'
  post '/deleteGroup', to: 'groups#delete', as: 'deleteGroup'
  post  '/api/sensorUpload', to: 'api#sensorSave'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
