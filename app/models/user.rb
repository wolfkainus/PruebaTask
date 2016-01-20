class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :projects

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true
  validates :last_name, presence: true
  validates :user_name, presence:true, uniqueness: true
  validates :email, presence: true
  validates :photo, presence: true

end
