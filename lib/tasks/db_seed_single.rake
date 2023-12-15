# lib/task/db_seed_single.rake
namespace :db do
    namespace :seed do
      desc "Loads the single selected file seed data from directory db/seeds/"
      task :single => :environment do
        filename = Dir[File.join(Rails.root, 'db', 'seeds', "#{ENV['SEED']}.seeds.rb")][0]
        puts "Seeding #{filename}..."
        load(filename) if File.exist?(filename)
      end
    end
  end