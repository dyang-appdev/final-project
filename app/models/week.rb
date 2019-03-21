# == Schema Information
#
# Table name: weeks
#
#  id         :integer          not null, primary key
#  week_of    :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Week < ApplicationRecord

  has_many :slots, :dependent => :destroy 
  
end
