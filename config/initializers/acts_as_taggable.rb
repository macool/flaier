ActsAsTaggableOn::Tag.class_eval do
  def to_s
    name
  end
end

ActsAsTaggableOn.remove_unused_tags = true
ActsAsTaggableOn.force_lowercase = true
