template "/etc/hosts" do
  path "/etc/hosts"
  source 'hosts.erb'
  owner 'root'
  group 'root'
  mode 00644
end