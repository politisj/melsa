# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :text
#  name       :text
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
    has_many    :posts
    has_many    :messages
    has_secure_password
    validates :email, presence: true, uniqueness: true, length: {minimum: 5}
    validates :name, presence: true
end
