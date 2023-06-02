class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    actor_firstname = self.first_name
    actor_lastname = self.last_name
    "#{actor_firstname} #{actor_lastname}"
  end

  def list_roles
    characters.map do |character|
        "#{character.name} - #{character.show.name}"
    end
  end
end