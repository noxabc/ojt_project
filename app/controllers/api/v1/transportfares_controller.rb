class Api::V1::TransportfaresController < ApplicationController

  def index
    transportfares = TransportFare.order('created_at ASC');
    render json: {status: 'SUCCESS!', message:'Loaded Transport Fare', data:transportfares},status: :ok
  end

  def show
    transportfare = TransportFare.find(params[:id])
    render json: {status: 'SUCCESS!', message:'Loaded Transport Fare', data:transportfare}, status: :ok
  end

  def update
    transportfare = TransportFare.find(params[:id])
    if transportfare.update_attributes(transportfare_params)
      render json: {status: 'SUCCESS!', message:'Updated Transport Fare', data:transportfare}, status: :ok
    else
      render json: {status: 'ERROR!', message:'Transport Fare not updated', data:transportfare.errors}, status: :unprocessable_entity
    end
  end

  private

  def transportfare_params
    params.permit(:pickup_location, :drop_location, :trip_amount)
  end
end
