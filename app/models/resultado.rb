class Resultado < ApplicationRecord
  belongs_to :estado
  validates :descripcion, presence: true
end
