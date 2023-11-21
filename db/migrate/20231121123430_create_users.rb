class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.date :birthday
      t.boolean :logged_in
      t.timestamps
    end
  end
end
