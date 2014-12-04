namespace :spec do
  task :all do
    chapters = Dir.glob "{0,1}*"
    chapters.each do |chapter|
      puts "Running tests for chapter #{chapter}:"
      Dir.chdir chapter
      system 'bundle exec rake spec'
      Dir.chdir '..'
    end
  end
end

task :default => 'spec:all'
