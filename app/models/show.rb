class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(args)
    Network.create(args)
  end
end
