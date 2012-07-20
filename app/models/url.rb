class Url < ActiveRecord::Base
  attr_accessible :link, :short
  
  before_create :shorten
  
  def self.find(input)
    input.to_i == 0 ? find_by_short(input) : super
  end
  
  private
  
  def to_param
    [id, short.parameterize].join("-")
  end
  
  def shorten
    self.short = ('a'..'z').to_a.shuffle[0..5].join
  end
end
