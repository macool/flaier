class IntroMessage < ApplicationRecord
  scope :ordered, -> { order(:id) }
end
