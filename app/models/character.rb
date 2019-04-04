class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :shows
  belongs_to :network, through: :shows

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_network(args)
    self.build_show(args)
  end
end
