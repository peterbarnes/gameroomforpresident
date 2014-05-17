class Blurb
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :description, :type => String
  field :title,       :type => String
  
  validates :title,         presence: true
  validates :description,   presence: true
end
