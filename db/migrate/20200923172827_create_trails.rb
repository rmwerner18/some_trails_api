class CreateTrails < ActiveRecord::Migration[6.0]
  def change
    create_table :trails do |t|
      t.string :name
      t.float :length
      t.string :difficulty
      t.string :summary
      t.string :image
      t.integer :stars
      t.string :location

      t.timestamps
    end
  end
end
