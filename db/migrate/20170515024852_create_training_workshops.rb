class CreateTrainingWorkshops < ActiveRecord::Migration[5.0]
  def change
    create_table :training_workshops do |t|
      t.string :description

      t.timestamps
    end
  end
end
