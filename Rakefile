require 'rake/testtask'

task :default do
  puts 'Available tasks:'
  system('bundle', 'exec', 'rake', '-T')
end

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['test/**/*_test.rb']
  t.verbose = true
end
