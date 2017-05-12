class Subentidad < ApplicationRecord
  belongs_to :entidad
  has_many :estados
  validates :entidad,
            :descripcion,
            presence: true
  def to_s
    descripcion
  end
end
