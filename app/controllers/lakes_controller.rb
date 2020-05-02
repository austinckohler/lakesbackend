class LakesController < ApplicationController

    def index 
        @lakes = Lake.all
        render json: @lakes, include: [:fishs]
       end
    
       def show 
        @lake = Lake.find(params[:id])
        render json: @lake, include: [:fishs]
       end    

       
end
