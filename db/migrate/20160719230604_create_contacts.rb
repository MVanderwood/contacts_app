class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :phone
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :group

      t.timestamps null: false
    end
  end
end
