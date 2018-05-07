module Api
  module V1
    class ProfilesController < ApplicationController

      skip_before_action :verify_authenticity_token

      def index
        profiles = Profile.order('created_at DESC');
        render json: {status: 'SUCCESS!', message:'Loaded Profiles', data:profiles},status: :ok
      end

      def show
        profile = Profile.find(params[:id])
        render json: {status: 'SUCCESS!', message:'Loaded profile', data:profile}, status: :ok
      end

      def create
        profile = Profile.new(profile_params)

        if profile.save
          render json: {status: 'SUCCESS!', message:'Saved profile', data:profile}, status: :ok
        else
          render json: {status: 'ERROR!', message:'Profile not saved', data:profile.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        profile = Profile.find(params[:id])
        profile.destroy
        render json: {status: 'SUCCESS!', message:'Deleted profile', data:profile}, status: :ok
      end

      def update
        profile = Profile.find(params[:id])
        if profile.update_attributes(profile_params)
          render json: {status: 'SUCCESS!', message:'Updated profile', data:profile}, status: :ok
        else
          render json: {status: 'ERROR!', message:'Profile not updated', data:profile.errors}, status: :unprocessable_entity
        end
      end

      private

      def profile_params
        params.permit(:last_name, :first_name, :middle_name, :email, :password, :mobile_number, :status)
      end

    end
  end
end
