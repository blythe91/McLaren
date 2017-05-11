class CreateSprPeople < ActiveRecord::Migration[5.0]
  def change
    create_table :spr_people do |t|
      t.string :document
      t.boolean :asv_member
      t.boolean :representative
      t.string :first_name
      t.string :second_name
      t.string :first_last_name
      t.string :second_last_name
      t.string :gender
      t.string :mobile_phone
      t.string :phone
      t.string :main_email
      t.string :second_email
      t.string :address
      t.references :ocupation, foreign_key: true
      t.references :nationality, foreign_key: true
      t.references :academic_level, foreign_key: true
      t.references :relationship, foreign_key: true
      t.references :Document_type, foreign_key: true

      t.timestamps
    end
  end
end
