class SessionsController < ApplicationController
  def new
    authenticate Auth::Facebook.authenticate(cookies)
    redirect_to '/consumers/1'
  end
end
