group "opensips" do
  group_name "opensips"
  action :create
end

user "opensips" do
  comment "opensips"
  username "opensips"
  gid "opensips"
  system true
  shell "/bin/false"
end

template node['opensips']['config_file'] do
  source "federate/opensips.cfg.erb"
  owner "root"
  group "root"
  mode 00600
  action :create
end

service 'opensips' do
  supports :status => true, :restart => true, :reload => true
  action :enable
end

service 'opensips' do
  supports :status => true, :restart => true, :reload => true
  action :start
end