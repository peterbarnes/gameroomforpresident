class Service
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :desc,    :type => String
  field :name,    :type => String
  
  validates :name, presence: true
  validates :desc, presence: true
end
