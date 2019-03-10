class Team < ApplicationRecord
  has_many :programmers

  def all_data_as_json(option={})
    self.as_json(include: { programmers: {
                              include: { languages: {
                                  include: :paradigms }}}})
  end
end
