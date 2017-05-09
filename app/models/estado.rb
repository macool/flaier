class Estado < ApplicationRecord
  belongs_to :situacion
  has_many :resultados
end
