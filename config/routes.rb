Rails.application.routes.draw do
  get 'list', to: 'flats#list'
  # get 'flat', to: 'flats#flat'

  get 'flat/:id', to: 'flats#flat', as: :flat
  root 'flats#list'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
