class Store < ActiveRecord::Base
  validates :title,   presence: true
  validates :hours,   presence: true
  validates :number,  presence: true
  validates :address, presence: true
end
