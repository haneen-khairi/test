class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # associations
  has_many :assignments
  has_many :roles, through: :assignments
  has_many :applications
  has_many :jobs, through: :applications

  # validations
  validates :email, presence: true

  def has_role?(role_name)
    self.roles.pluck(:name).map(&:to_sym).include?(role_name.to_sym)
  end
end
