class DestinationsController < ApplicationController
  def index 
    @destinations = Destination.all
    render :index
  end 

  def show 
    @destination = Destination.find_by(id: params[:id])
    render :show
  end

  def update
    @destination = Destination.find_by(id: params[:id])
    @destination.update( 
      name: params[:name] || @destination.name, 
      latitude: params[:latitude] || @destination.latitude,
      longitude: params[:longitude] || @destination.longitude, 
      order: params[:order] || @destination.order,
      journey_id: params[:journey_id] || @destination.journey_id
    )
    render :show 
  end 

  def create 
    @destination = Destination.create( 
      name: params[:name],
      latitude: params[:latitude],
      longitude: params[:longitude],
      order: params[:order],
      journey_id: params[:journey_id]
    )
    @destination.save
  end 
  
  def destroy 
    @destination = Destination.find_by(id: params[:id])
    @destination.destroy
    render json: { message: "Photo destroyed successfully" }
  end 

end
