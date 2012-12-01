class Wishname < ActiveRecord::Base
  attr_accessible :name
  has_many :wishes

  def cloud_size
    @max ||= Wishname.maximum("wish_count")
    @min ||= Wishname.minimum("wish_count")
    return 1 + (@max - self.wish_count) * (10-1) / (@max - @min)
  end
end
