class SituationsController < ApplicationController
  def show
    @entidad = Entidad.find params[:survey_id]
    @subentidad = @entidad.subentidades.find params[:status_id]
    @estado = @subentidad.estados.find params[:id]
    @situaciones = @estado.situaciones

    if @situaciones.count == 1
      # edge case: N
      # only one situacion
      redirect_to situacion_button_link(@situaciones.first)
    end
  end

  private

  def situacion_button_link(situacion)
    survey_status_situation_result_path(
      survey_id: @entidad.id,
      status_id: @subentidad.id,
      situation_id: @estado.id,
      id: situacion.id
    )
  end
  helper_method :situacion_button_link
end
