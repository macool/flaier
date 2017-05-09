class IntroController < ApplicationController
  def show
    if params[:m].present?
      @intro_message = IntroMessage.find(params[:m])
    else
      @intro_message = IntroMessage.ordered.first
    end
    @intro_message = @intro_message.decorate
  end
end
