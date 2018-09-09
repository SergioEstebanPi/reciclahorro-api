class Solicitud < ApplicationRecord
  belongs_to :user
  belongs_to :oferta
end
