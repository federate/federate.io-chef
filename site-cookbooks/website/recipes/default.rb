#
# Cookbook Name:: website
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "unicorn"

unicorn_config "/etc/unicorn/federate.io.rb" do
  listen({ node[:unicorn][:port] => node[:unicorn][:options] })
  working_directory '/data/example/current'
  worker_timeout node[:unicorn][:worker_timeout]
  gem_home node[:unicorn][:gem_home]
  preload_app node[:unicorn][:preload_app]
  worker_processes node[:unicorn][:worker_processes]
  before_fork node[:unicorn][:before_fork]
  logger node[:unicorn][:logger]
  stderr_path node[:unicorn][:stderr_path]
  stdout_path node[:unicorn][:stdout_path]
  pid node[:unicorn][:pid]
  owner "example"
  group "example"
  restart_command "kill -USR2 `cat /var/run/example.pid`"
  stop_command "kill `cat /var/run/example.pid`"
  start_grace_time "90"
  stop_grace_time "45"
  restart_grace_time "90"
  mem_usage_mb "250"
  cpu_usage_percent "90"
  process_name "unicorn"
end