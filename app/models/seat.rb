class Seat < ActiveRecord::Base
  belongs_to :district
  has_many :nominations
end
