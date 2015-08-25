Rails.application.routes.draw do
  post "register" => "users#register"
  post "login" => "users#login"
end
