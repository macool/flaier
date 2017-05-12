class Subentidad < ApplicationRecord
  belongs_to :entidad
  validates :entidad_id,
            :descripcion,
            presence: true
end
