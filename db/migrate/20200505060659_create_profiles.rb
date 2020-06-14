class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :last_name
      t.string :phone
      t.date :dob
      t.string :address

      t.timestamps
    end
  end
end
