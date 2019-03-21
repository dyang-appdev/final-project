# == Schema Information
#
# Table name: rbt_availabilities
#
#  id         :integer          not null, primary key
#  rbt_id     :integer
#  slot_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RbtAvailability < ApplicationRecord

  belongs_to :rbt 
  belongs_to :slot 
  
end
