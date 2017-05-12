class SituationsController < ApplicationController
  def show
    @entidad = Entidad.find params[:survey_id]
    @subentidad = @entidad.subentidades.find params[:status_id]
    @estado = @subentidad.estados.find params[:id]
    @situaciones = @estado.situaciones
  end
end
