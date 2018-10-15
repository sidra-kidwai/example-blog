class Assembly < ApplicationRecord
  has_and_belongs_to_many :parts
  belong_to :article
end
