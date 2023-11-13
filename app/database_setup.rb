require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: './sql.db',
)

Dir[File.join(__dir__, 'models', '**')].each do |file|
  require file
end