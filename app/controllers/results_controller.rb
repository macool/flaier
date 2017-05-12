class ResultsController < ApplicationController
  def show
    @entidad = Entidad.find params[:survey_id]
    @subentidad = @entidad.subentidades.find params[:status_id]
    @estado = @subentidad.estados.find params[:situation_id]
    @situacion = @estado.situaciones.find params[:id]
    @resultados = [] # TODO
  end
end
