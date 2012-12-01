class Wish < ActiveRecord::Base
  attr_accessible :ip, :location, :wishname_id
  belongs_to :wishname
end
