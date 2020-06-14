class CreateEventListOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :event_list_organizations do |t|
      t.references :organization, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
