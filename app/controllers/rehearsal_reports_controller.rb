class RehearsalReportsController < ApplicationController
    def index
        rehearsal_reports = RehearsalReport.all
        render json: rehearsal_reports
    end
    
    def show
        rehearsal_report = RehearsalReport.find(params[:id])
        render json: rehearsal_report
    end
    
    def create
        rehearsal_report = RehearsalReport.create!(rehearsal_report_params)
        render json: rehearsal_report
    end
    
    def update
        rehearsal_report = RehearsalReport.find(params[:id])
        rehearsal_report.update(rehearsal_report_params)
        render json: rehearsal_report
    end
    
    def destroy
        rehearsal_report = RehearsalReport.find(params[:id])
        rehearsal_report.destroy
        head :no_content
    end
    
    private
    
    def rehearsal_report_params
        # params.permit(:date, :production_id, :user_id)
    end
end
