# == Schema Information
#
# Table name: client_availabilities
#
#  id         :integer          not null, primary key
#  client_id  :integer
#  slot_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ClientAvailability < ApplicationRecord

  belongs_to :client 
  belongs_to :slot 
  
end
