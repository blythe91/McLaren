class CreateRegistries < ActiveRecord::Migration[5.0]
  def change
    create_table :registries do |t|
      t.date :registry_date
      t.references :group, foreign_key: true
      t.references :charge, foreign_key: true
      t.references :unity, foreign_key: true
      t.references :adult, foreign_key: true
      t.references :program_receptor, foreign_key: true

      t.timestamps
    end
  end
end
