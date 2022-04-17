class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.references :fan, null: false, foreign_key: { to_table: :users }, index: true
      t.references :photo, null: false, index: true

      t.timestamps
    end
  end
end
