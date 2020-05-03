class FishController < ApplicationController
    
    def index 
        @fish = Fish.all
        render json: @fish, include: [:lake]
    end

    def show 
        @fish = Fish.find(params[:id])
        render json: @fish, include: [:lake]
    end

    def create 
        @fish = Fish.create(
            name: params[:name],
            description: params[:description],
            lake_id: params[:lake_id]
        )
        redirect_to "http://localhost:3001"
    end

end
