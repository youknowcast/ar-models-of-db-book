class Classroom < ActiveRecord::Base
  self.table_name = 'classroom'
  self.primary_key = %i[building room_number]
end