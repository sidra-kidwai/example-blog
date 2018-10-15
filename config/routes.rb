Rails.application.routes.draw do
  # resources :articles do
  #   resources :comments
  # end
  # resources :comments do
  #   member do
  #     get 'preview'
  #   end
    # collection do
      # get 'test'
    # end
  # end
  defaults format: :json do
  resources :photos
  end
  resources :articles, shallow: true do
  resources :comments
  resources :quotes
  resources :drafts
end
  get 'books/*section/:title', to: 'books#show', as: :books_show

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
