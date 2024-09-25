class JourneysController < ApplicationController
  def index 
    @journeys = Journey.all
    render :index
  end 

  def show 
    @journey = Journey.find_by(id: params[:id])
    @destinations = @journey.destinations
    render :show
  end

  def update
    @journey = Journey.find_by(id: params[:id])
    @journey.update( 
      total_distance: params[:total_distance] || @journey.total_distance, 
      total_time: params[:total_time] || @journey.total_time,
      fuel_needed: params[:fuel_needed] || @journey.fuel_needed, 
    )
    render :show 
  end 

  def create 
    @journey = Journey.create( 
      total_distance: params[:total_distance],
      total_time: params[:total_time],
      fuel_needed: params[:fuel_needed],
    )
    @journey.save
  end 
  
  def destroy 
    @journey = Journey.find_by(id: params[:id])
    @journey.destroy
    render json: { message: "Journey destroyed successfully" }
  end 

end
