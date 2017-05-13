class CreateRegistries < ActiveRecord::Migration[5.0]
  def change
    create_table :registries do |t|
      t.date :registry_date
      t.references :adult, foreign_key: true

      t.timestamps
    end
  end
end
