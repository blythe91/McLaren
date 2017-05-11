class CreateMunicipalities < ActiveRecord::Migration[5.0]
  def change
    create_table :municipalities do |t|
      t.string :description
      t.references :State, foreign_key: true

      t.timestamps
    end
  end
end
