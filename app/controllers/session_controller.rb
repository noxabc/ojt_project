class SessionController < ApplicationController

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      # token = user.generate_token
      # render json: token, status: :ok
      render json: { status: 'Success', data:user}, status: :ok
    else
      render json: { error: "Wrong email or password" }, status: :unauthorized
    end
  end
end
