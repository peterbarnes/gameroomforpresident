class Service < ActiveRecord::Base
  validates :name, presence: true
  validates :desc, presence: true
end
