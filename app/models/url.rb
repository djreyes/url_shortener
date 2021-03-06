class Url < ActiveRecord::Base
  attr_accessible :link, :short, :count

  before_save :add_uri_scheme, :shorten

  validates :link, :presence => true
  validates :short, :uniqueness => true
  
  def self.find(input)
    input.to_i == 0 ? find_by_short(input) : super
  end
  
  def increment_counter
    self.count += 1
  end
  
  private
  
  def to_param
    [id, short.parameterize].join("-")
  end
  
  def add_uri_scheme
    if URI.parse(self.link).scheme.nil?
      self.link = "http://" + self.link
    end
  end
  
  def shorten
    self.short = ('a'..'z').to_a.shuffle[0..5].join unless attribute_present?(:short)
  end
end
