class CreateAcademicLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :academic_levels do |t|
      t.string :description

      t.timestamps
    end
  end
end
