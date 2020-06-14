class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :file_type
      t.string :file

      t.timestamps
    end
  end
end
