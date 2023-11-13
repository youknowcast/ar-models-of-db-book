require 'active_record'
require 'yaml'

case db_type = ENV.fetch('DB_TYPE', 'sqlite3')
when 'mysql', 'postgresql'
  config = YAML.load_file(File.join(__dir__, "config", "#{db_type}.yml"))
  ActiveRecord::Base.establish_connection(
    adapter: config['adapter'],
    host: config['host'],
    port: config['port'],
    database: config['database'],
    username: config['username'],
    password: config['password']
  )
else
  ActiveRecord::Base.establish_connection(
    adapter: 'sqlite3',
    database: './sql.db',
  )
end



Dir[File.join(__dir__, 'models', '**')].each do |file|
  require file
end