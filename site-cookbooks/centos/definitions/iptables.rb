define :iptables_rules, :action => [:enable, :start], :notifies => [] do
  name = params[:name]
  service_action = params[:action]
  service_notifies = params[:notifies]

  # service
  service 'iptables' do
    supports :status => true, :restart => true
    action service_action
  end
end