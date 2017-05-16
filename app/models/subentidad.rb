class Subentidad < ApplicationRecord
  belongs_to :entidad
  has_many :estados
  validates :entidad,
            :descripcion,
            presence: true
  scope :sorted, ->{ order(sort_order: :asc) }
  def to_s
    descripcion
  end
end
