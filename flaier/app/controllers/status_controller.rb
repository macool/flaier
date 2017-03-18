class StatusController < ApplicationController
  def show
      @entidad = Entidad.find params[:survey_id]
      @situacion = @entidad.situaciones.find params[:id]
      @estados = @situacion.estados
  end
end
