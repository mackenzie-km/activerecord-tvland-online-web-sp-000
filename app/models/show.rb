class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(args)
    Network.find_or_create_by(args)
  end
end
