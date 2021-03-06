# == Schema Information
#
# Table name: users
#
#  id          :bigint(8)        not null, primary key
#  screen_name :string(255)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :authentications, dependent: :destroy
  has_many :tweets, dependent: :destroy
  accepts_nested_attributes_for :authentications
  validates :screen_name, presence: true
end
