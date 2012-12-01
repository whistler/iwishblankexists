class Wish < ActiveRecord::Base
  attr_accessible :ip, :location, :wishname_id
  belongs_to :wishname, :counter_cache => :wish_count
end
