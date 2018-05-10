class Api::V1::UsersController < ApplicationController

  def index
    users = User.order('created_at DESC');
    render json: { status: 'SUCCESS!', message:'Loaded Users', data:users },status: :ok
  end

  # def create
  #     user = User.new(users_params)
  #     if user.save
  #       render json: user, status: :ok
  #     else
  #       render json: user.errors, status: :bad_request
  #     end
  #   end
  #
  # def update
  #   if current_user.update(users_params)
  #     render json: current_user.reload, status: :ok
  #   else
  #     render json: current_user.errors, status: 406
  #   end
  # end
  #
  # private
  #
  # def users_params
  #   params.permit(:email, :password, :password_confirmation)
  # end
  #
  # def authorize_self
  #   unless current_user.id.to_s == params[:id]
  #     render json: { error: 'You are not authorized to perform the action'}, status: :forbidden
  #   end
  # end
end
