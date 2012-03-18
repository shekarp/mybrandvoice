require 'token_endpoint'

Mybrandvoice::Application.routes.draw do
  resource  :client_statistic, :only => :show
  resources :protected_resources, :only => [:index, :show, :create, :destroy]
  resources :clients, :only => [:show, :new, :create]
  resources :authorizations, :only => :create
  match 'oauth2/authorize', :to => 'authorizations#new'
  post 'oauth2/token', :to => proc { |env| TokenEndpoint.new.call(env) }

  resource :dashboard, :only => :show
  resource :session, :only => :new
  resource :account, :only => :update
  root :to => 'accounts#new'

  resources :facebooks

  resources :influences

  resources :consumers do
    resources :influences
  end

  resources :categories do
    resources :brands
  end

  resources :brands do
    resources :categories
  end
end
