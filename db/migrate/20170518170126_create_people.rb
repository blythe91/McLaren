class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.integer :dnis
      t.date :promise_day
      t.date :birth
      t.references :spr_person, foreign_key: true
      t.references :parish, foreign_key: true

      t.timestamps
    end
  end
end
