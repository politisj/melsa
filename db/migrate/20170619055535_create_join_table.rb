class CreateJoinTable < ActiveRecord::Migration[5.1]
  def change
      create_join_table :users, :comments do |t|
          t.index :user_id
          t.index :comment_id
      end
    end
end
