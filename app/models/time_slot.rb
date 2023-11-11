class TimeSlot < ActiveRecord::Base
  self.table_name = 'time_slot'
  self.primary_key = %i[time_slot_id day start_hr start_min]
end