# == Schema Information
#
# Table name: slots
#
#  id         :integer          not null, primary key
#  slot_start :datetime
#  slot_end   :datetime
#  week_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Slot < ApplicationRecord

  # enum day:  [:monday, :tuesday, :wednesday, :thursday, :friday, :saturday]
  # enum time: [:0900, :1000, :1100, :1130, :1200, :1300, :1330, :1400]

  # validate :day_times
  
  # def day_times
  #     permissible_times: {monday: [:0900, :1000], tuesday: [:1200]}
  #     errors.add(:time, "Sorry, this time is unavailable on this day") unless permissible_times[day.to_sym].include? time
  # end
   
  has_many :rbt_availabilities, :dependent => :destroy 
  has_many :bcba_availabilities, :dependent => :destroy  
  has_many :client_availabilities, :dependent => :destroy 
  belongs_to :week 
  has_many :rbts, :through => :rbt_availabilities, :source => :rbt
  has_many :bcbas, :through => :bcba_availabilities, :source => :bcba
  has_many :clients, :through => :client_availabilities, :source => :client 
  
end
