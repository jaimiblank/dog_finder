class CreateDogs < ActiveRecord::Migration[7.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.text :bio
      t.references :user, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
