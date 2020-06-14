class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.references :user, null: false, foreign_key: true
      t.text :message
      t.references :message_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
