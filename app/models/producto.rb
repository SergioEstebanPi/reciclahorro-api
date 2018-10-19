class Producto < ApplicationRecord
  # Associates an attachment and a blob. When the user is destroyed they are
  # purged by default (models destroyed, and resource files deleted).
  #has_one_attached :avatar
 has_attached_file :imagen, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
 validates_attachment :imagen, presence: true
 do_not_validate_attachment_file_type :imagen  
end
