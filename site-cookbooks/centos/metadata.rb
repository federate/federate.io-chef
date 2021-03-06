name             'centos'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures centos'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe "centos", "Sets up packages"
recipe "centos::iptables", "Sets up iptables"
recipe "centos::hosts", "Sets up hosts file"

depends "yum"

%w{centos}.each do |os|
  supports os
end