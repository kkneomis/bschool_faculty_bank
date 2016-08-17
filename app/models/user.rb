class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    
    has_many :areas, dependent: :destroy
    has_many :educations, dependent: :destroy
    has_many :courses, dependent: :destroy
    has_many :researches, dependent: :destroy
end
