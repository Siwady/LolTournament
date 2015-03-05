class TournamentsController < ApplicationController
  

  
  def index
    @tournaments = Tournament.order(:name)
  end

  def create
    @tournaments = Tournament.new(tournament_params)
    
    if @tournaments.save
      redirect_to @tournaments,flash: {notice: "Torneo creado exitosamente"}
    else
      render :new 
    end
  end
  
  def show
    @tournaments = Tournament.find(params[:id])
  end

  def new
    @tournaments = Tournament.new
  end

 
  def edit
    @tournaments = Tournament.find(params[:id])
  end

  def update
    @tournaments = Tournament.find(params[:id])
    if @tournaments.update(tournament_params)
      redirect_to @tournaments,flash: {notice: "Torneo actualizado exitosamente"}
      
    else
      render :teams_batch
    end
    
  end

  def destroy
    @tournament.destroy
     redirect_to tournaments_path,flash: {notice: "Torneo actualizado exitosamente"}
          
  end

  def teams_batch
    @tournaments = Tournament.find(params[:id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    

    # Never trust parameters from the scary internet, only allow the white list through.
    def tournament_params
      params.require(:tournament).permit!
    end
end
