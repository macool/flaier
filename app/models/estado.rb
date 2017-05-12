class Estado < ApplicationRecord
  has_many :situaciones
  belongs_to :subentidad
  validates :subentidad,
            :descripcion,
            presence: true
  def to_s
    descripcion
  end
end
