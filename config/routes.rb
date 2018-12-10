Rails.application.routes.draw do
  ##############################################################################
  ######################Login###################################################
  
  ##############################################################################
  resources :users
  get 'authentication_controller/authenticate'
  post 'authenticate', to: 'authentication#authenticate'
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
  ###########################Alerts#############################################
  get '/alerts', to: 'alerts#all', as: 'myAlerts'
  post '/alertsSave', to: 'alerts#save', as: 'myAlertsSave'
  get ' /alertEdit/:id', to: 'alerts#edit', as: 'myAlertsEdit'
  post '/alertsEdit', to: 'alerts#editPost', as:'myAlertsEditPost'
  post '/deleteAlert', to: 'alerts#delete', as: 'deleteAlert'
  ##############################################################################
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
