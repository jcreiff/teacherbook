class Teacher < ActiveRecord::Base

  has_many :parents
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

end
