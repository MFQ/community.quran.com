class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :message
      t.integer :word_id

      t.timestamps
    end
  end
end
