# == Schema Information
#
# Table name: bcba_availabilities
#
#  id         :integer          not null, primary key
#  bcba_id    :integer
#  slot_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BcbaAvailability < ApplicationRecord

  belongs_to :bcba 
  belongs_to :slot 

end
