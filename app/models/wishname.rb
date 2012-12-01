class Wishname < ActiveRecord::Base
  attr_accessible :name
  has_many :wishes

  def cloud_size
    @max ||= Wishname.maximum("wish_count")
    cs = ""
    begin
      cs = (1 + (self.wish_count - 1.0) * (10-1).to_f / (@max - 1).to_f).to_i
    rescue 
      cs = 1
    end
    return cs
  end
end
