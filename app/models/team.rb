class Team < ApplicationRecord
  has_many :programmers

  def as_json(option={})
    super({except: [:created_at, :updated_at]}.merge(option))
  end

  def all_data_as_json(option={})
    self.as_json(include: { programmers: {
                              include: { languages: {
                                include: { paradigms: { except: [:created_at, :updated_at] } },
                                except: [:created_at, :updated_at] }},
                              except: [:created_at, :updated_at]}})
  end
end
