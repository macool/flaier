class StatusController < ApplicationController
  def show
    @entidad = Entidad.find params[:survey_id]
    @subentidad = @entidad.subentidades.find params[:id]
    @estados = @subentidad.estados
  end
end
