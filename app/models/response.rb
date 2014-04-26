class Response < ActiveRecord::Base
  belongs_to :seat
  belongs_to :user
  belongs_to :nomination
end
