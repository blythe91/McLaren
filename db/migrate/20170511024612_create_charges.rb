class CreateCharges < ActiveRecord::Migration[5.0]
  def change
    create_table :charges do |t|
      t.string :description
      t.references :structure_level, foreign_key: true

      t.timestamps
    end
  end
end
