Rails.application.routes.draw do
  #get 'authentication_controller/authenticate'
  #post 'authenticate', to: 'authentication#authenticate'
  resources :users, controller: '/erro_login'
  get '/login', to: 'users#login', as: 'login'
  post '/login', to: 'users#loginCheck', as: 'loginSend'
  get '/users#loginCheck', to: '/erro_login#index'
  get '/logout', to: 'users#logout', as: 'logout'
  get '/register', to: 'users#register', as: 'register'
  post '/register', to: 'users#registerSave', as: 'registerSave'
  get '/', to: 'users#indexLogSensor', as: 'home'
  #####################Group Routes#############################################
  get '/myGroups', to: 'groups#all', as: 'mygroups'
  post '/myGroupsSave', to: 'groups#new', as: 'saveNewGroup'
  get '/myGroupsEdit/:id', to: 'groups#edit', as: 'editGroup'
  post '/myGroupsEdit', to: 'groups#editPost', as: 'editGroupPost'
  post '/deleteGroup', to: 'groups#delete', as: 'deleteGroup'
  ##############################################################################
  #####################Sensor Routes############################################
  get '/mySensors', to: 'sensors#all', as: 'mySensors'

 # get '/mySensorsAdd', to: 'sensors#new', as: 'mySensorsAdd'
  post '/mySensorsSave', to: 'sensors#create', as: 'saveNewSensor'

  get '/mySensorEdit/:id', to: 'sensors#edit', as: 'editSensor'
  post '/mySensorEdit', to: 'sensors#editPost', as: 'editSensorPost'

  post '/deleteSensor/', to: 'sensors#delete', as: 'deleteSensor'
  ######################Sensor History##########################################
  get '/sensor/:id/history', to: 'sensor_historys#show', as: 'Sensor_history'
  
  ##############################################################################
  ######################Users###################################################
  get '/users', to: 'users#index', as: 'users'
  get '/edit/users/:id', to: 'users#edit', as: 'edit_user_get'
  post '/edit/users', to: 'users#editSave', as: 'edit_user_post'
  post '/delete/user', to: 'users#delete', as: 'delete_user'
  ######################API#####################################################
  post  '/api/sensorUpload', to: 'api#sensorSave'
  ##############################################################################
  ###########################Alerts#############################################
  get '/alerts', to: 'alerts#all', as: 'myAlerts'
  post '/alertsSave', to: 'alerts#save', as: 'myAlertsSave'
  get '/alertEdit/:id', to: 'alerts#edit', as: 'myAlertsEdit'
  post '/alertsEdit', to: 'alerts#editPost', as:'myAlertsEditPost'
  post '/deleteAlert', to: 'alerts#delete', as: 'deleteAlert'
  ##############################################################################
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end