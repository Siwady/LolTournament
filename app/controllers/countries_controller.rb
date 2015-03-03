class CountriesController < ApplicationController
  def index
    @countries = Country.order(:name)
  end

  def new
    @countries = Country.new
  end

  def create
    @countries = Country.new(countries_params)

    if @countries.save
      redirect_to countries_path, 
        flash: {notice: "Pais creado exitosamente"}
    else
      render :new
    end
  end

  def edit
    @countries = Country.find(params[:id])
    
  end

  def update
    @countries = Country.find(params[:id])

    if @countries.update(countries_params)
      redirect_to countries_path, 
        flash: {notice: "Pais editado exitosamente"}
    else
      render :edit
    end
  end

  private

    def countries_params
      params.require(:country).permit(:name)
    end
end
