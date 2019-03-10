class Language < ApplicationRecord
  has_and_belongs_to_many :programmers
  has_and_belongs_to_many :paradigms

  def as_json(option={})
    super({except: [:created_at, :updated_at]}.merge(option))
  end
end
