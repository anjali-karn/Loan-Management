class AddMessageToContacts < ActiveRecord::Migration[7.1]
  def change
    add_column :contacts, :message, :string
  end
end
