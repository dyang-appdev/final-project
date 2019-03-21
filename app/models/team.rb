# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  client_id  :integer
#  bcba_id    :integer
#  rbt_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Team < ApplicationRecord

  belongs_to :bcba 
  belongs_to :client 
  belongs_to :rbt
  
end
