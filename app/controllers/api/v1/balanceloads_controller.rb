class Api::V1::BalanceloadsController < ApplicationController

  def index
    balanceloads = BalanceLoad.order('created_at DESC');
    render json: {status: 'SUCCESS!', message:'Loaded Balance Load', data:balanceloads},status: :ok
  end

  def show
    balanceload = BalanceLoad.find(params[:id])
    render json: {status: 'SUCCESS!', message:'Loaded Balance Load', data:balanceload}, status: :ok
  end

  def create
    balanceload = BalanceLoad.new(balanceload_params)

    if balanceload.save
      render json: {status: 'SUCCESS!', message:'Saved Balance Load', data:balanceload}, status: :ok
    else
      render json: {status: 'ERROR!', message:'Balance Load not saved', data:balanceload.errors}, status: :unprocessable_entity
    end
  end

  def destroy
    balanceload = BalanceLoad.find(params[:id])
    balanceload.destroy
    render json: {status: 'SUCCESS!', message:'Deleted Balance Load', data:balanceload}, status: :ok
  end

  def update
    balanceload = BalanceLoad.find(params[:id])
    if balanceload.update_attributes(balanceload_params)
      render json: {status: 'SUCCESS!', message:'Updated Balance Load', data:balanceload}, status: :ok
    else
      render json: {status: 'ERROR!', message:'Balance Load not updated', data:balanceload.errors}, status: :unprocessable_entity
    end
  end

  private

  def balanceload_params
    params.permit(:amount_loaded, :remaining_load)
  end
end
