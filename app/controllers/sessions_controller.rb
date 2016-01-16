class SessionsController < ApplicationController
  # GET /auth/slack/callback
  def create
    auth = request.env['omniauth.auth']

    redirect_to '/' unless auth
    redirect_to '/' unless auth['provider'] == 'yammer'

    # TODO モデルに格納するように変更する
    session[:user_id] = user.uid
    session[:token] = auth.credentials.token

    redirect_to '/'
  end

  # DELETE /logout
  def destroy
    session[:user_id] = nil
    session[:token] = nil

    redirect_to '/'
  end
end
