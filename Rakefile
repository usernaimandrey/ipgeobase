# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.libs << 'lib'
  t.test_files = FileList['test/**/test_*.rb']
  t.verbose = true
end

require "rubocop/rake_task"

namespace :test do
  desc 'Runs RuboCop on specified directories'

  RuboCop::RakeTask.new(:rubocop) do |task|
    # Dirs: app, lib, test
    task.patterns = ['app/**/*.rb', 'lib/**/*.rb', 'test/**/*.rb']

    # Make it easier to disable cops.
    task.options << "--display-cop-names"

    # Abort on failures (fix your code first)
    task.fail_on_error = false
  end
end

Rake::Task[:test].enhance ['test:rubocop']