class Oferta < ApplicationRecord
  belongs_to :almacen
  belongs_to :descuento
  belongs_to :residuo
  belongs_to :producto
  # paperclip
  has_attached_file :imagen, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment :imagen, presence: true
  do_not_validate_attachment_file_type :imagen  
end
