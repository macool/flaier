class IntroMessageDecorator < ApplicationDecorator
  def next_message
    @next_message ||= object.class.ordered.where(
      "id > :id",
      id: object.id
    ).first
  end
end
