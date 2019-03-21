# == Schema Information
#
# Table name: rbts
#
#  id               :integer          not null, primary key
#  bcba_id          :integer
#  service_location :string
#  address          :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  full_name        :string
#

class Rbt < ApplicationRecord

  has_many :clients
  belongs_to :bcba
  has_many :teams, :dependent => :nullify 
  has_many :rbt_availabilities, :dependent => :destroy 
  has_many :slots, :through => :rbt_availabilities, :source => :slot 

end
