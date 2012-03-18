class SessionsController < ApplicationController
  def new
    authenticate Auth::Facebook.authenticate(cookies)
    redirect_to consumers_url
  end
end
