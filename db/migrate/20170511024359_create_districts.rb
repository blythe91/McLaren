class CreateDistricts < ActiveRecord::Migration[5.0]
  def change
    create_table :districts do |t|
      t.string :description
      t.references :region, foreign_key: true

      t.timestamps
    end
  end
end
