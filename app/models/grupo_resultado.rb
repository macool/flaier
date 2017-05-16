class GrupoResultado < ApplicationRecord
  validates :token, presence: true
  before_validation :generate_token

  private

  def generate_token
    self.token = SecureRandom.urlsafe_base64
  end
end
