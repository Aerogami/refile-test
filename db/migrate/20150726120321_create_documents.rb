class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.belongs_to :upload

      t.string :file_id, null: false
      t.string :file_filename, null: false
      t.string :file_content_type, null: false

      t.integer :file_size, null: false

      t.timestamps null: false
    end
  end
end
