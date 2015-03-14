class TeamsController < ApplicationController
  


  def new
    @tournament=Tournament.find(params[:tournament_id])
    @team = Team.new
  end

  def create
    @tournament=Tournament.find(params[:tournament_id])
    @team = @tournament.teams.build(team_params)

    if @tournament.teams.count ==@tournament.team_limits
      if @team.save
        redirect_to  @tournament
      else
        render :new
      end
    end
  end

  def edit

  end

  def show
  end

  def update
    @tournament=Tournament.find(params[:tournament_id])

      if @team.update(team_params)
        redirect_to @tournament
      else
        render :edit
      end
    
  end

  def destroy

    @tournament=Tournament.find(params[:tournament_id])
    @team=@tournament.teams.find(params[:id])

    @team.destroy
    redirect_to @tournament, flash: {notice: "Equipo Eliminado!"}
    
  end

  private
    def team_params
      params.require(:team).permit!
    end
end
