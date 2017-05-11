class CreateStructureLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :structure_levels do |t|
      t.string :description

      t.timestamps
    end
  end
end
