Rails.application.routes.draw do

  root 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/portfolio'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/resume'

end
