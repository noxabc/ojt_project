class Api::V1::BalanceloadsController < ApplicationController

      def index
        balanceloads = LoadBalance.order('created_at DESC');
        render json: {status: 'SUCCESS!', message:'Loaded Balance Load', data:balanceloads},status: :ok
      end

      def show
        balanceload = LoadBalance.find(params[:id])
        render json: {status: 'SUCCESS!', message:'Loaded Balance Load', data:balanceload}, status: :ok
      end

      def create
        balanceload = LoadBalance.new(balanceload_params)

        if balanceload.save
          render json: {status: 'SUCCESS!', message:'Saved Balance Load', data:balanceload}, status: :ok
        else
          render json: {status: 'ERROR!', message:'Balance Load not saved', data:balanceload.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        balanceload = LoadBalance.find(params[:id])
        balanceload.destroy
        render json: {status: 'SUCCESS!', message:'Deleted Balance Load', data:balanceload}, status: :ok
      end

      def update
        balanceload = LoadBalance.find(params[:id])
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
  end
end
