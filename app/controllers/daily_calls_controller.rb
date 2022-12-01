class DailyCallsController < ApplicationController
    def index
        daily_calls = DailyCall.all
        render json: daily_calls
    end

    def show
        daily_call = DailyCall.find(params[:id])
        render json: daily_call
    end

    def create
        daily_call = DailyCall.create!(daily_call_params)
        render json: daily_call
    end

    def update
        daily_call = DailyCall.find(params[:id])
        daily_call.update(daily_call_params)
        render json: daily_call
    end

    def destroy
        daily_call = DailyCall.find(params[:id])
        daily_call.destroy
        head :no_content
    end

    private

    def daily_call_params
        # params.permit(:date, :production_id, :user_id)
    end
end
