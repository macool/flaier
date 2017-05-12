class Situacion < ApplicationRecord
  belongs_to :entidad
  has_many :estados
  validates :descripcion, presence: true

  def to_s
    descripcion
  end
end
