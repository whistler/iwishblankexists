class Wish < ActiveRecord::Base
  attr_accessible :ip, :location, :wishname_id, :name
  belongs_to :wishname, :counter_cache => :wish_count

  before_save :find_wishname
  attr_accessor :name

  def find_wishname
    self.wishname_id = Wishname.find_or_create_by_name(self.name).id
  end

end
