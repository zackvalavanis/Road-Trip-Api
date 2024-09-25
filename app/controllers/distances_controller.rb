class DistancesController < ApplicationController
  def index 
    @distances = Distance.all
    render :index
  end 

  def show 
    @distance = Distance.find_by(id: params[:id])
    render :show
  end

  def update
    @distance = Distance.find_by(id: params[:id])
    @distance.update( 
      start_location_id: params[:start_location_id] || @distance.start_location_id, 
      end_location_id: params[:end_location_id] || @distance.end_location_id,
      distance: params[:distance] || @distance.distance, 
      duration: params[:duration] || @distance.duration,
    )
    render :show 
  end 

  def create 
    @distance = Distance.create( 
      start_location_id: params[:start_location_id],
      end_location_id: params[:end_location_id],
      distance: params[:distance],
      duration: params[:duration],
    )
    @distance.save
  end 
  
  def destroy 
    @distance = Distance.find_by(id: params[:id])
    @distance.destroy
    render json: { message: "Distance destroyed successfully" }
  end 
end  
