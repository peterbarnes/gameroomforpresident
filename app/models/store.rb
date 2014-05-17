class Store
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :address,   :type => String
  field :hours,     :type => String
  field :number,    :type => String
  field :title,     :type => String
  
  validates :title,   presence: true
  validates :hours,   presence: true
  validates :number,  presence: true
  validates :address, presence: true
end
