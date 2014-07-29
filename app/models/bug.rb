class Bug < ActiveRecord::Base
  attr_accessible :description, :priority, :status, :title

  validates :title, presence: true
end
