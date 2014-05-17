class Link
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :url,    :type => String
  field :name,    :type => String
  
  validates :name, presence: true
  validates :url,  presence: true
end
