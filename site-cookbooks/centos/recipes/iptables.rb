package 'iptables'

template "iptables" do
  path "/etc/sysconfig/iptables"
  source "iptables.erb"
  owner "root"
  group "root"
  mode 00644
  notifies :reload, 'service[iptables]'
end

iptables_rules 'default_rules' do

end