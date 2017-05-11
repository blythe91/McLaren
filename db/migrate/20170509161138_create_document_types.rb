class CreateDocumentTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :document_types do |t|
      t.string :description
      t.string :tok

      t.timestamps
    end
  end
end
