class CreateEcards < ActiveRecord::Migration[7.1]
  def change
    create_table :ecards do |t|
      t.string :name
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
