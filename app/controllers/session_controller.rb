class SessionController < ApplicationController

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      user.regenerate_auth_token
      render json: { status: 'Success', data:user}, status: :ok
    else
      render json: { error: "Wrong email or password" }, status: :unauthorized
    end
  end

end
