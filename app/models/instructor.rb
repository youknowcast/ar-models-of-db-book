class Instructor < ActiveRecord::Base
  self.table_name = 'instructor'

  belongs_to :department, foreign_key: :dept_name
  has_many :instructor_students, foreign_key: :i_id, class_name: 'Advisor'
  has_many :students, through: :instructor_students
end