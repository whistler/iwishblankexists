class Wish < ActiveRecord::Base
  attr_accessible :ip, :location, :wishname_id, :name, :email
  attr_accessor :name

  belongs_to :wishname, :counter_cache => :wish_count

  before_create :find_wishname

  validate :presence_of_name_or_wishname

  def find_wishname
    self.wishname_id = Wishname.find_or_create_by_name(self.name).id
  end

  def presence_of_name_or_wishname
    if self.name.blank? and self.wishname.blank?
      self.errors.add(:name, "can't be blank")
    end
  end

end
