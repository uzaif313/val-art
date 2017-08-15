Rails.application.routes.draw do
 
  get 'calendar/index'

  resources :events
  resources :arts do
     resources :publish,only:[:create],constraints: RoutesConstraints::XhrOnly,module: :arts
  end
  resources :calendar, only:[:index]
  devise_for :users,controllers: {
        sessions: 'user/sessions',
        registrations: 'user/registrations'
      }
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
