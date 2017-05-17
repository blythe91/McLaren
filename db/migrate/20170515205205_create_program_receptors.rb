class CreateProgramReceptors < ActiveRecord::Migration[5.0]
  def change
    create_table :program_receptors do |t|
      t.references :person, foreign_key: true
      t.references :spr_person, foreign_key: true

      t.timestamps
    end
  end
end
