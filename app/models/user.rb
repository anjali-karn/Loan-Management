# app/models/user.rb
class User < ApplicationRecord

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "id", "id_value", "name", "password", "updated_at"]
  end
  
    def authenticate(password)
      return true if self.password == password
      false
    end
  end
  