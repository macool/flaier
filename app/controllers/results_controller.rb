class ResultsController < ApplicationController
  def create
    @entidad = Entidad.find params[:survey_id]
    @subentidad = @entidad.subentidades.find params[:status_id]
    @estado = @subentidad.estados.find params[:situation_id]
    @situacion = @estado.situaciones.find params[:id]
    @resultado = create_grupo_resultado!(@situacion)
    redirect_to action: :show, id: @resultado.token
  end

  def show
    @grupo_resultado = GrupoResultado.find_by token: params[:id]
    @resultados = Resultado.find @grupo_resultado.resultados_ids
  end
end
