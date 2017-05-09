class IntroMessageDecorator < ApplicationDecorator
  def next_message
    @next_message ||= object.class.ordered.where(
      "id > :id",
      id: object.id
    ).first
  end

  def parsed_content
    Kramdown::Document.new(object.content).to_html
  end
end
