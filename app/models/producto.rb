class Producto < ApplicationRecord
  # Associates an attachment and a blob. When the user is destroyed they are
  # purged by default (models destroyed, and resource files deleted).
  #has_one_attached :avatar
end
