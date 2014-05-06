class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  mount_uploader :photo, ImageUploader
  validates :name, length: {minimum: 1, maximum: 32}
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
