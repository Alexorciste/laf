class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :private_owner, class_name: "User",
                          foreign_key: "administrator_id"

  belongs_to :administrator, class_name: "User", optional: true
end
