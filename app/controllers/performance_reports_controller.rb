class PerformanceReportsController < ApplicationController
    def index
        performance_reports = PerformanceReport.all
        render json: performance_reports
    end

    def show
        performance_report = PerformanceReport.find(params[:id])
        render json: performance_report
    end

    def create
        performance_report = PerformanceReport.create!(performance_report_params)
        render json: performance_report
    end

    def update
        performance_report = PerformanceReport.find(params[:id])
        performance_report.update(performance_report_params)
        render json: performance_report
    end

    def destroy
        performance_report = PerformanceReport.find(params[:id])
        performance_report.destroy
        head :no_content
    end

    private

    def performance_report_params
        # params.permit(:date, :production_id, :user_id)
    end
end
