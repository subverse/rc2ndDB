namespace :db do

  desc "Migration of second database"
  task :migrate_db2 => :environment do

    ActiveRecord::Base.establish_connection "db2_#{Rails.env}"
    ActiveRecord::Migration.verbose = ENV["VERBOSE"] ? ENV["VERBOSE"] == "true" : true
    ActiveRecord::Migrator.migrate("db/migrate_db2/", ENV["VERSION"] ? ENV["VERSION"].to_i : nil)

    #Rake::Task["db:schema:dump"].invoke if ActiveRecord::Base.schema_format == :ruby
  end

end