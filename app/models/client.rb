# == Schema Information
#
# Table name: clients
#
#  id                 :integer          not null, primary key
#  address            :string
#  age_band           :string
#  functioning_status :string
#  service_location   :string
#  insurance          :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  full_name          :string
#

class Client < ApplicationRecord

  has_many :teams, :dependent => :nullify 
  has_many :client_availabilities, :dependent => :destroy 
  has_many :slots, :through => :client_availabilities, :source => :slot 
  
end
