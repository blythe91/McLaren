class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :relationships do |t|
      t.string :description

      t.timestamps
    end
  end
end
