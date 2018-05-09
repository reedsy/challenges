require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: Dir.pwd + '/db/reedsy.sqlite3'
)

Dir[Dir.pwd + '/app/models/*.rb'].each { |file| require file }

Dir.glob(Dir.pwd + '/app/models/**/*.rb').each do |file|
  basename = File.basename(file, File.extname(file))
  clazz = basename.camelize.constantize
  clazz.auto_upgrade!
end
