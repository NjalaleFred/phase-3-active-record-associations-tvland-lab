class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    character_name = self.name
    character_catchphrase = self.catchphrase
    "#{character_name} always says: #{character_catchphrase}"
  end
end