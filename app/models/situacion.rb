class Situacion < ApplicationRecord
  acts_as_taggable

  belongs_to :estado

  validates :estado,
            :descripcion,
            presence: true

  delegate :subentidad, to: :estado

  def to_s
    descripcion
  end
end
