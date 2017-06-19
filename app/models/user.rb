# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :text
#  name            :text
#  image           :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#  is_admin        :boolean          default(FALSE)
#

class User < ApplicationRecord
    has_many      :posts
    has_many      :comments, :through => :comments_users
    has_many      :messages
    has_secure_password
    validates :email, presence: true, uniqueness: true, length: {minimum: 5}
    validates :name, presence: true
end
