class Bug < ActiveRecord::Base
  attr_accessible :description, :priority, :status, :title, :user_id

  validates :title, presence: true

  belongs_to :user
end
