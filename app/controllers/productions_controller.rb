class ProductionsController < ApplicationController
    skip_before_action :authorize, only: [:index, :create]
    
    def index
        productions = Production.all
        render json: productions
    end
    
    def create
        production = Production.create!(production_params)
        render json: production, status: :created
    end
    
    def show
        production = Production.find(params[:id])
        render json: production
    end
    
    def update
        production = Production.find(params[:id])
        production.update(production_params)
        render json: production
    end
    
    def destroy
        production = Production.find(params[:id])
        production.destroy
        head :no_content
    end
    
    private
    
    def production_params
        params.permit(:prod_title)
    end
    
end
