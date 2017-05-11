class CreateParishes < ActiveRecord::Migration[5.0]
  def change
    create_table :parishes do |t|
      t.string :description
      t.references :Municipality, foreign_key: true

      t.timestamps
    end
  end
end