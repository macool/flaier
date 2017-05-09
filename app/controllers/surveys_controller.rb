class SurveysController < ApplicationController
  def index
      @entidades = Entidad.all
  end

  def show
      @entidad = Entidad.find params[:id]
      @situaciones = @entidad.situaciones
  end
end
