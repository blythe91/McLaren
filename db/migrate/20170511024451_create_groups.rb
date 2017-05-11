class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :description
      t.references :district, foreign_key: true
      t.references :parish, foreign_key: true

      t.timestamps
    end
  end
end