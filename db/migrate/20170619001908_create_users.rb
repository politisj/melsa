class CreateUsers < ActiveRecord::Migration[5.1]

    def change
        create_table "users", force: :cascade do |t|
          t.text     "email"
          t.text     "name"
          t.text     "image"
          t.datetime "created_at",       null: false
          t.datetime "updated_at",       null: false
          t.string   "password_digest"
          t.boolean  "is_admin",         default: false
      end
    end
end
