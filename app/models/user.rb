class User < ActiveRecord::Base
  attr_accessible :email, :name

  validates :name, presence: true
  validates :email, presence: true,
    format: {with: /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i }, uniqueness: true
end
