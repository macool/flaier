class Resultado < ApplicationRecord
  acts_as_taggable
  validates :descripcion, presence: true

  def to_s
    descripcion
  end
end
