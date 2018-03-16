class Vote < ApplicationRecord
  belongs_to :post
  enum direction: { up: 1, down: 2 }
end
