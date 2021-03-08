class Schedule < ApplicationRecord
belongs_to :users, :inverse_of => :schedules
accepts_nested_attributes_for :users

has_many :bookings, :inverse_of => :schedule
accepts_nested_attributes_for :bookings

validates :start, uniqueness: { scope: :user_id, message: "You have already made this time available" }
end
