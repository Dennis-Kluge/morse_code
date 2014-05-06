require "bundler/gem_tasks"
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'lib'
  t.verbose = true
  t.test_files = FileList['test/*_spec.rb']
end
