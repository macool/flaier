class ResultsController < ApplicationController
  def show
    @entidad = Entidad.find params[:survey_id]
    @subentidad = @entidad.subentidades.find params[:status_id]
    @estado = @subentidad.estados.find params[:situation_id]
    @situacion = @estado.situaciones.find params[:id]
    search_results = Resultado.tagged_with(@situacion.tags).to_a
    @resultados = search_results.to_a.sample(4)
  end
end
