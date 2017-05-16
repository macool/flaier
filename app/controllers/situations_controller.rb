class SituationsController < ApplicationController
  before_action :find_situaciones

  def show
  end

  def create
    if @situaciones.count == 1
      # edge case: N
      # only one situacion
      @resultado = create_grupo_resultado!(@situaciones.first)
      redirect_to situacion_button_link(@resultado)
    else
      redirect_to action: :show, id: params[:id]
    end
  end

  private

  def find_situaciones
    @entidad = Entidad.find params[:survey_id]
    @subentidad = @entidad.subentidades.find params[:status_id]
    @estado = @subentidad.estados.find params[:id]
    @situaciones = @estado.situaciones
  end

  def situacion_button_link(resultado)
    survey_status_situation_result_path(
      survey_id: @entidad.id,
      status_id: @subentidad.id,
      situation_id: @estado.id,
      id: resultado.token,
      action: :create
    )
  end
end
