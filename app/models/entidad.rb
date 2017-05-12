class Entidad < ApplicationRecord
  validates :descripcion, presence: true
  has_many :subentidades, dependent: :destroy

  def to_s
    descripcion
  end
end
