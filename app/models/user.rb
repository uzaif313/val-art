class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  Roles = ['Artist', 'User']
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #association
  has_many :arts, foreign_key:"user_id"       
  has_many :events
  #validation 
  validates :role, inclusion: { in: User::Roles }
  validates_presence_of :username

  #scope
  scope :user,->{where(role:"User")}
  scope :artist,->{where(role:"Artist")}
end
