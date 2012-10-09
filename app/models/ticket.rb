class Ticket < ActiveRecord::Base
  belongs_to :project
  attr_accessible :title, :description
  validates :title, :presence => true
  validates :description, :presence => true, :length => { :minimum => 10 }
end
