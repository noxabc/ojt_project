class Api::V1::HistorylogsController < ApplicationController

      def index
        historylogs = HistoryLog.order('created_at DESC');
        render json: {status: 'SUCCESS!', message:'Loaded History Logs', data:historylogs},status: :ok
      end

      def show
        historylog = HistoryLog.find(params[:id])
        render json: {status: 'SUCCESS!', message:'Loaded History Log', data:historylog},status: :ok
      end

      def create
        historylog = HistoryLog.new(historylog_params)

        if historylog.save
          render json: {status: 'SUCCESS!', message:'Saved History Log', data:historylog},status: :ok
        else
          render json: {status: 'ERROR!', message:'History Log not saved', data:historylog.errors},status: :unprocessable_entity
        end
      end

      def destroy
        historylog = HistoryLog.find(params[:id])
        historylog.destroy
        render json: {status: 'SUCCESS!', message:'Deleted History Log', data:historylog},status: :ok
      end

      def update
        historylog = HistoryLog.find(params[:id])
        if historylog.update_attributes(historylog_params)
          render json: {status: 'SUCCESS!', message:'Updated History Log', data:historylog},status: :ok
        else
          render json: {status: 'ERROR!', message:'History Log not updated', data:historylog.errors},status: :unprocessable_entity
        end
      end

      private

      def historylog_params
        params.permit(:last_name, :first_name)
      end

    end
  end
end
