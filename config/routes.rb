Rails.application.routes.draw do

  root 'static_pages#home'

  get 'home', to: 'static_pages#home'

  get 'portfolio', to: 'static_pages#portfolio'

  get 'about', to: 'static_pages#about'

  get 'contact', to: 'static_pages#contact'

  get 'resume', to: 'static_pages#resume'

  post 'contact_create', to: 'static_pages#contact_create'

end
