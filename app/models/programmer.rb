class Programmer < ApplicationRecord
  has_and_belongs_to_many :languages
end
