class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  
  def index
    @players = Player.all
  end

  # GET /players/1
  # GET /players/1.json
  def show
  end

  # GET /players/new
  def new
    @player = Player.new
  end

  # GET /players/1/edit
  def edit
  end

  # POST /players
  # POST /players.json
  def create
    @player = Player.new(player_params)

    if @player.save
      redirect_to players_path,flash: {notice: "Jugador creado exitosamente"}
    else
      render :new 
    end
    
  end

  def update
    @player=Player.find(params[:id])
    if @player.update(player_params)
      redirect_to players_path,flash: {notice: "Jugador actualizado exitosamente"}
      
    else
      render :edit
    end
    
  end

  def destroy
    @player.destroy
      redirect_to players_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit!
    end
end
