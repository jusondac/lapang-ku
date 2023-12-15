namespace :db do
  namespace :seed do
    desc "Loads the single or multiple selected file seed data from directory db/seeds/ (SEEDS=seed_1,seed_2,seed_3)"
    task :multiple => :environment do
      seeds = ENV["SEEDS"].split(",")
      seeds.each do |seed|
        filename = Dir[File.join(Rails.root, "db", "seeds", "#{seed}.seeds.rb")][0]
        puts "Seeding #{filename}..."
        load(filename) if File.exist?(filename)
      end
    end
  end
end
