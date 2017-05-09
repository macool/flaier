class ResultsController < ApplicationController
  def show
      @entidad = Entidad.find params[:survey_id]
      @situacion = @entidad.situaciones.find params[:status_id]
      @estado = @situacion.estados.find params[:id]
      @resultados = @estado.resultados.limit(16)
  end
end
