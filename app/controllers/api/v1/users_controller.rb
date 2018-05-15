class Api::V1::UsersController < ApplicationController
  # before_action :authenticate_user!, only: :update
  # before_action :authorize_self, only: :update

  def index
    users = User.order('created_at DESC');
    render json: { status: 'Success', message:'Loaded Users', data:users },status: :ok
  end

  def create
    user = User.new(users_params)
    if user.save
      render json: { status: 'Success', message:'Created User/s', data:user },status: :ok
    else
      render json: user.errors, status: :bad_request
    end
  end

  private

  def users_params
    params.permit(:last_name, :first_name, :middle_name, :email, :password, :password_confirmation, :mobile_number)
  end
end
