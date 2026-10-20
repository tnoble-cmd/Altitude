class CreateContactSubmissions < ActiveRecord::Migration[7.1]
  def change
    create_table :contact_submissions do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :phone
      t.string :company
      t.text :message, null: false

      t.timestamps
    end
  end
end
