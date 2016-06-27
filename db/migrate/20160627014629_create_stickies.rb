class CreateStickies < ActiveRecord::Migration
  def change
    create_table :stickies do |t|
      t.string :note, null: false

      t.timestamps null: false
    end
  end
end
