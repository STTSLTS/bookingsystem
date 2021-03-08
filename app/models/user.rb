class User < ApplicationRecord

has_many :bookings, dependent: :destroy, :inverse_of => :user
  accepts_nested_attributes_for :bookings

has_many :schedules, dependent: :destroy, :inverse_of => :user
  accepts_nested_attributes_for :schedules

def name 
    "#{user_name}"
  end
end
