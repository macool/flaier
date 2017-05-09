class Entidad < ApplicationRecord
    validates :descripcion, presence: true
    has_many :situaciones
end
