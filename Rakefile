
task :default => :rspec
  
task :rspec do
  Dir['specs/*_spec.rb'].each do |s|
    sh "rspec -I. -Ispecs  #{s}"
  end
end
