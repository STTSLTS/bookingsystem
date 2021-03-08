class Booking < ApplicationRecord


belongs_to :schedule, :inverse_of => :bookings
  accepts_nested_attributes_for :schedule

belongs_to :user, :inverse_of => :bookings
accepts_nested_attributes_for :user

#belongs_to :room, :inverse_of => :bookings
#  accepts_nested_attributes_for :room
end
