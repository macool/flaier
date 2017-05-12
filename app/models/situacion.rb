class Situacion < ApplicationRecord
  belongs_to :estado

  validates :estado,
            :descripcion,
            presence: true

  def to_s
    descripcion
  end
end
