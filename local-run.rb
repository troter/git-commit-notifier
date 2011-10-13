#!/usr/bin/env ruby

if RUBY_VERSION < '1.9'
  # This is for Unicode support in Ruby 1.8
  $KCODE = 'u';
  require 'jcode'
end

if RUBY_VERSION >= '1.9'
  Encoding.default_external = "utf-8"
  Encoding.default_internal = "utf-8"
end


require 'rubygems'
$LOAD_PATH.unshift(File.expand_path('./lib', File.dirname(__FILE__)))

# parameters: revision1, revision 2, branch

require 'git_commit_notifier/executor'

GitCommitNotifier::Executor.run!(ARGV)

