class Api::V1::UsersController < ApplicationController

  def index
    users = User.order('created_at DESC');
    render json: users.reload, status: :ok
  end

  def create
    user = User.new(users_params)
    if user.save
      render json: user.reload, status: :ok
    else
      render json: user.errors, status: :bad_request
    end
  end

  def update
    user = User.find(params[:id])
    if user.update_attributes(users_params)
      render json: user.reload, status: :ok
    else
      render json: user.errors, status: :bad_request
    end
  end

  private

  def users_params
    params.permit(:last_name, :first_name, :middle_name, :email, :password, :password_confirmation, :mobile_number)
  end
end
