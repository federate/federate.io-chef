#
# Cookbook Name:: god
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory "/etc/god" do
  owner "root"
  group "root"
  mode 00755
  action :create
end

directory "/var/log/god" do
  owner "root"
  group "root"
  mode 00755
  action :create
end