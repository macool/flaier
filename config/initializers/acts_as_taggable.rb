ActsAsTaggableOn::Tag.class_eval do
  scope :most_used, -> { order(taggings_count: :desc) }
  scope :limited, -> { limit(10) }
  def to_s
    name
  end
end

ActsAsTaggableOn.remove_unused_tags = true
ActsAsTaggableOn.force_lowercase = true
