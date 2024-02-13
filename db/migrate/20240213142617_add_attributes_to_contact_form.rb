class AddAttributesToContactForm < ActiveRecord::Migration[7.0]
  def change
    add_column :contact_forms, :name, :string
    add_column :contact_forms, :last_name, :string
    add_column :contact_forms, :email, :string
    add_column :contact_forms, :message, :text
  end
end
