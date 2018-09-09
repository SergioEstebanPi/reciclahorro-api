class Oferta < ApplicationRecord
  belongs_to :almacen
  belongs_to :descuento
  belongs_to :residuo
  belongs_to :producto
end
