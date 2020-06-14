class CreateDateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :date_votes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :date_option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
