class TournamentsController < ApplicationController
  before_action :set_tournament, only: [:show, :edit, :update, :destroy]

  
  def index
    @tournaments = Tournament.order(:name)
  end

  def create
    @tournament = Tournament.new(tournament_params)
    
    if @tournament.save
      redirect_to @tournament,flash: {notice: "Torneo creado exitosamente"}
    else
      render :new 
    end
  end
  
  def show
    @tournaments = Tournament.find(params[:id])
  end

  def new
    @tournament = Tournament.new
  end

 
  def edit
    @tournaments = Tournament.find(params[:id])
  end

  def update
    
    if @tournament.update(tournament_params)
      redirect_to @tournament,flash: {notice: "Torneo actualizado exitosamente"}
      
    else
      render :set_tournament
    end
    
  end

  def destroy
    @tournament.destroy
     redirect_to tournaments_path,flash: {notice: "Torneo actualizado exitosamente"}
          
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tournament
      @tournament = Tournament.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tournament_params
      params.require(:tournament).permit(:name, :creation_date, :country_id, :team_limits, :prize)
    end
end
