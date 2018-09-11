class Entrega < ApplicationRecord
  #belongs_to :user
  belongs_to  :vecino, :class_name => "User"
  belongs_to :solicitud
  #belongs_to :user
  belongs_to :recolector, :class_name => "User"
  belongs_to :oferta
end
