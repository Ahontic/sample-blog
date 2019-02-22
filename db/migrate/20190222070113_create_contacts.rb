class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.text :name
      t.integer :phone
      t.text :text

      t.timestamps
    end
  end
end
