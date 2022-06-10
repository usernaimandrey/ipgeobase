# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.libs << 'lib'
  t.test_files = FileList['lib/**/test_*.rb']
  t.verbose = true
end

# begin
#   require 'rubocop/rake_task'
#   RuboCop::RakeTask.new do |t|
#     t.options = ['--display-cop-names']
#   end
# rescue LoadError
# end
require "rubocop/rake_task"

RuboCop::RakeTask.new

task default: %i[test rubocop]