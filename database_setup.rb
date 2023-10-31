require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: '../sql.db',
)

require './student'
require './department'
