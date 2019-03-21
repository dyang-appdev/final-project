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

  validates :client_id, :uniqueness => { :scope => [:rbt_id, :bcba_id], :message => "team already exists. Must enter in a different BCBA and RBT." }
    validates :client_id, :uniqueness => { :scope => [:rbt_id, :client_id], :message => "is already assigned this RBT. Must select a new RBT." }


  belongs_to :bcba 
  belongs_to :client 
  belongs_to :rbt
  
end
