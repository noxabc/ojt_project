class Api::V1::TriptransactionsController < ApplicationController

  def index
    triptransactions = TripTransaction.order('created_at DESC');
    render json: {status: 'SUCCESS!', message:'Loaded Trip Transactions', data:triptransactions},status: :ok
  end

  def show
    triptransaction = TripTransaction.find(params[:id])
    render json: {status: 'SUCCESS!', message:'Loaded Trip Transaction', data:triptransaction},status: :ok
  end

  def create
    triptransaction = TripTransaction.new(triptransaction_params)

    if triptransaction.save
      render json: {status: 'SUCCESS!', message:'Saved Trip Transaction', data:triptransaction},status: :ok
    else
      render json: {status: 'ERROR!', message:'Trip Transaction not saved', data:triptransaction.errors},status: :unprocessable_entity
    end
  end

  def destroy
    triptransaction = TripTransaction.find(params[:id])
    triptransaction.destroy
    render json: {status: 'SUCCESS!', message:'Deleted Trip Transaction', data:triptransaction},status: :ok
  end

  def update
    triptransaction = TripTransaction.find(params[:id])
    if triptransaction.update_attributes(triptransaction_params)
      render json: {status: 'SUCCESS!', message:'Updated Trip Transaction', data:triptransaction},status: :ok
    else
      render json: {status: 'ERROR!', message:'Trip Transaction not updated', data:triptransaction.errors},status: :unprocessable_entity
    end
  end

  private

  def triptransaction_params
    params.permit(:pickup_location, :drop_location, :trip_amount)
  end

end
