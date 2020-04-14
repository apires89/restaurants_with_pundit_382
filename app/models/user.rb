class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum status: [:customer,:owner,:admin]
  # 0 -> customer
  # 1 -> owner
  # 2 -> admin
end
