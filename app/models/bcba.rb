# == Schema Information
#
# Table name: bcbas
#
#  id         :integer          not null, primary key
#  address    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  full_name  :string
#

class Bcba < ApplicationRecord

  has_many :rbts, :dependent => :nullify 
  has_many :teams, :dependent => :nullify 
  has_many :bcba_availabilities, :dependent => :destroy 
  has_many :slots, :through => :bcba_availabilities, :source => :slot 

end
