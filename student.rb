class Student < ActiveRecord::Base
  self.table_name = 'student'

  belongs_to :department, foreign_key: :dept_name
end
