class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]


  # GET /teams/1
  # GET /teams/1.json
  def show
  end

  # GET /teams/new
  def new
    @tournament=Tournament.find(params[:tournament_id])
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams
  # POST /teams.json
  def create
    @tournament=Tournament.find(params[:tournament_id])
    @team = Team.new(team_params)

      if @team.save
        redirect_to  @tournament
      else
        render :new
        
      end
    
  end

  # PATCH/PUT /teams/1
  # PATCH/PUT /teams/1.json
  def update
    @tournament=Tournament.find(params[:tournament_id])

      if @team.update(team_params)
        redirect_to @tournament
      else
        render :edit
      end
    
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy
    @team.destroy
    @tournament=Tournament.find(params[:tournament_id])
    
      format.html { redirect_to teams_url }
      format.json { head :no_content }
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      params.require(:team).permit(:name, :victories, :losses, :creation_date, :points, :place)
    end
end
