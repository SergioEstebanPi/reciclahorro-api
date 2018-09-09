class Entrega < ApplicationRecord
  belongs_to :user
  belongs_to :solicitud
  belongs_to :user
  belongs_to :oferta
end
