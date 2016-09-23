class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :bio
      t.integer :score
      t.date :birth

      t.timestamps null: false
    end
  end
end
