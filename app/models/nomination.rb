class Nomination < ActiveRecord::Base
  belongs_to :party
  belongs_to :seat

	has_one :candidate
end
