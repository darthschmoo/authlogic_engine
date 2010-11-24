require 'rails/generators/migration'
require 'rails/generators/active_record'

class CreateUsersMigration < Rails::Generators::Base
  include Rails::Generators::Migration
  source_root File.expand_path('../templates', __FILE__)
  
  def self.next_migration_number(*args)
    ActiveRecord::Generators::Base.next_migration_number(*args)
  end
  
  def copy_user_migration_to_db_migrate
    migration_template "migration.rb", "db/migrate/create_users_table.rb"
    say "remember to run 'rake db:migrate' to create the table."
  end
end
