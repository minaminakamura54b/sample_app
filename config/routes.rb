Rails.application.routes.draw do
  root "static_pages#home"

#get /static_pages/home(URL)=>static_pages#home(コントローラー名#アクション名)
#get /about => static_pages#about この方が見やすくて良い
  get 'static_pages/home'
  get 'static_pages/help'
  get "static_pages/about"
end
