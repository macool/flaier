class IntroMessageDecorator < ApplicationDecorator
  def next_message
    @next_message ||= object.class.ordered.where(
      "id > :id",
      id: object.id
    ).first
  end

  def parsed_content
    renderer = Redcarpet::Render::HTML.new(hard_wrap: true)
    markdown = Redcarpet::Markdown.new(renderer)
    markdown.render(object.content)
  end
end
