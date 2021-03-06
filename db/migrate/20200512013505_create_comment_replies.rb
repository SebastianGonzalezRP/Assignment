class CreateCommentReplies < ActiveRecord::Migration[6.0]
  def change
    create_table :comment_replies do |t|
      t.references :user, null: false, foreign_key: true
      t.text :text_comment_reply
      t.references :comment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
