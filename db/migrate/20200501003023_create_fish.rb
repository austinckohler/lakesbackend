class CreateFish < ActiveRecord::Migration[6.0]
  def change
    create_table :fish do |t|
      t.string :name
      t.string :description
      t.references :lake, null: false, foreign_key: true

      t.timestamps
    end
  end
end
