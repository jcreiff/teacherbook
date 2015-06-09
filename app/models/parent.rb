class Parent < ActiveRecord::Base

  belongs_to :teacher
  validates :teacher_id, presence: true
  validates :name, presence: true
  validates :student_name, presence: true
  validates :email, presence: true

end
