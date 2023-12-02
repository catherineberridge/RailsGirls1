class CreateEmessages < ActiveRecord::Migration[7.1]
  def change
    create_table :emessages do |t|
      t.string :from_email
      t.string :to_email
      t.text :message
      t.integer :ecard_id

      t.timestamps
    end
  end
end
