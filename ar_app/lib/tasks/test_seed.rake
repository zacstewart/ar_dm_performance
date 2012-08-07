namespace :db do
  namespace :test do
    task :prepare => :environment do
      puts "Loading seeds"
      Rake::Task['db:data:load']
    end
  end
end
