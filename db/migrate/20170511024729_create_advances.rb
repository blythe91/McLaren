class CreateAdvances < ActiveRecord::Migration[5.0]
  def change
    create_table :advances do |t|
      t.string :description
      t.references :unity, foreign_key: true

      t.timestamps
    end
  end
end
