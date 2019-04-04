class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  has_many :networks, through: :shows

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_network(call_letters: call_letters)
    Network.new(call_letters: call_letters)
  end
end
