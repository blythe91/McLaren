class CreateNationalities < ActiveRecord::Migration[5.0]
  def change
    create_table :nationalities do |t|
      t.string :description

      t.timestamps
    end
  end
end
