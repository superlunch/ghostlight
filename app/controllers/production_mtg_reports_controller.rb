class ProductionMtgReportsController < ApplicationController
    def index
        production_mtg_reports = ProductionMtgReport.all
        render json: production_mtg_reports
    end
    
    def show
        production_mtg_report = ProductionMtgReport.find(params[:id])
        render json: production_mtg_report
    end
    
    def create
        production_mtg_report = ProductionMtgReport.create!(production_mtg_report_params)
        render json: production_mtg_report
    end
    
    def update
        production_mtg_report = ProductionMtgReport.find(params[:id])
        production_mtg_report.update(production_mtg_report_params)
        render json: production_mtg_report
    end
    
    def destroy
        production_mtg_report = ProductionMtgReport.find(params[:id])
        production_mtg_report.destroy
        head :no_content
    end
    
    private
    
    def production_mtg_report_params
        # params.permit(:date, :production_id, :user_id)
    end
end
