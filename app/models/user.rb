class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


        validates :fname, presence: true
        validates :lname, presence: true
        validates :email, presence: true
        validates :password, presence: true
end
