Rails.application.routes.draw do
  get '/', to: 'users#indexLogSensor'
  #####################Group Routes#############################################
  get '/myGroups', to: 'groups#all', as: 'mygroups'
  post '/myGroupsSave', to: 'groups#new', as: 'saveNewGroup'
  get '/myGroupsEdit/:id', to: 'groups#edit', as: 'editGroup'
  post '/myGroupsEdit', to: 'groups#editPost', as: 'editGroupPost'
  post '/deleteGroup', to: 'groups#delete', as: 'deleteGroup'
  ##############################################################################
  #####################Sensor Routes############################################
  get '/mySensors', to: 'sensors#all', as: 'mySensors'
  post '/mySensorsSave', to: 'sensors#new', as: 'saveNewSensor'
  get '/mySensorEdit/:id', to: 'sensors#edit', as: 'editSensor'
  post '/mySensorEdit', to: 'sensors#editPost', as: 'editSensorPost'
  post '/deleteSensor', to: 'sensors#delete', as: 'deleteSensor'
  ######################Sensor History##########################################
  get '/sensor/:id/history', to: 'sensor_historys#show', as: 'Sensor_history'
  
  ##############################################################################
  ######################Users###################################################
  resources :users
  ######################API#####################################################
  post  '/api/sensorUpload', to: 'api#sensorSave'
  ##############################################################################
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
