group "opensips" do
  action :create
end

user "opensips" do
  comment "opensips"
  system true
  shell "/bin/false"
end

template node['opensips']['federate']['config_file'] do
  source "federate/opensips.cfg.erb"
  owner "root"
  group "root"
  mode 00600
end