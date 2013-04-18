user "opensips" do
  comment "opensips"
  gid "opensips"
  system true
  shell "/bin/false"
  action :create
end

template node['opensips']['federate']['config_file'] do
  source "federate/opensips.cfg.erb"
  owner "root"
  group "root"
  mode 00600
  notifies :reload, 'service[opensips]'
end