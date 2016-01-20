Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  # Root Path
  root 'home#index'

  # Home Path
  get '/' => 'home#index'

end
