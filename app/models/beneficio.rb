class Beneficio < ApplicationRecord
  belongs_to :user
  belongs_to :entrega
end
