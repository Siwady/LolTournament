class TournamentsController < ApplicationController
  before_action :set_tournament, only: [:show, :edit, :update, :destroy]

  # GET /tournaments
  # GET /tournaments.json
  def index
    @tournaments = Tournament.order(:name)
  end

  
  # GET /tournaments/1
  # GET /tournaments/1.json
  def show
    @tournaments = Tournament.find(params[:id])
  end

  # GET /tournaments/new
  def new
    @tournament = Tournament.new
  end

  # GET /tournaments/1/edit
  def edit
    @tournaments = Tournament.find(params[:id])
  end

  # POST /tournaments
  # POST /tournaments.json
  def create
    @tournament = Tournament.new(tournament_params)

    
    if @tournament.save
      redirect_to tournaments_path,flash: {notice: "Torneo creado exitosamente"}
    else
      render :new 
      
    end
    
  end

  # PATCH/PUT /tournaments/1
  # PATCH/PUT /tournaments/1.json
  def update
    
    if @tournament.update(tournament_params)
      redirect_to tournament_path,flash: {notice: "Torneo actualizado exitosamente"}
      
    else
      render :edit 
    end
    
  end

  # DELETE /tournaments/1
  # DELETE /tournaments/1.json
  def destroy
    @tournament.destroy
    respond_to do |format|
      format.html { redirect_to tournaments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tournament
      @tournament = Tournament.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tournament_params
      params.require(:tournament).permit(:name, :creation_date, :country, :team_limits, :prize)
    end
end
