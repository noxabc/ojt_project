class Api::V1::HistoryloadsController < ApplicationController

      def index
        historyloads = HistoryLoad.order('created_at DESC');
        render json: {status: 'SUCCESS!', message:'Loaded History Loads', data:historyloads},status: :ok
      end

      def show
        historyload = HistoryLoad.find(params[:id])
        render json: {status: 'SUCCESS!', message:'Loaded History Load', data:historyload}, status: :ok
      end

      def create
        historyload = HistoryLoad.new(historyload_params)

        if historyload.save
          render json: {status: 'SUCCESS!', message:'Saved History Load', data:historyload}, status: :ok
        else
          render json: {status: 'ERROR!', message:'History Load not saved', data:historyload.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        historyload = HistoryLoad.find(params[:id])
        historyload.destroy
        render json: {status: 'SUCCESS!', message:'Deleted History Load', data:historyload}, status: :ok
      end

      def update
        historyload = HistoryLoad.find(params[:id])
        if historyload.update_attributes(historyload_params)
          render json: {status: 'SUCCESS!', message:'Updated History Load', data:historyload}, status: :ok
        else
          render json: {status: 'ERROR!', message:'History Load not updated', data:historyload.errors}, status: :unprocessable_entity
        end
      end

      private

      def historyload_params
        params.permit(:amount_loaded)
      end

    end
  end
end
