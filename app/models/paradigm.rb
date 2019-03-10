class Paradigm < ApplicationRecord
  has_and_belongs_to_many :languages

  def as_json(option={})
    super({except: [:created_at, :updated_at]}.merge(option))
  end
end
