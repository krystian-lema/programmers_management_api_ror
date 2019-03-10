class Language < ApplicationRecord
  has_and_belongs_to_many :programmers
  has_and_belongs_to_many :paradigms
end
