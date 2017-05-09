class IntroController < ApplicationController
  def show
    @intro_messages = get_intro_messages
  end

  private

  def get_intro_messages
    IntroMessage.ordered.all
  end
end