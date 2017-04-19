class Person
  include Mongoid::Document
  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :notes, type: String

  def full_name
    if first_name || last_name
      "#{first_name} #{last_name}"
    else
      email
    end
  end
end
