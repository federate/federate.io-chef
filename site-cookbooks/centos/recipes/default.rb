#
# Cookbook Name:: centos
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'wireshark'
package 'tcpdump'
package 'mdadm'
package 'curl'
package 'make'
package 'libattr-devel'
package 'xfsprogs'
package 'sendmail'
package 'gcc-c++'
package 'php'
package 'socat'
package 'screen'
package 'libxslt-devel'
package 'libxml2-devel'
package 'apr-devel'
package 'apr-util-devel'
package 'e2fsprogs'
package 'sysstat'
package 'sqlite'
package 'sqlite-devel'
package 'redhat-lsb'
package 'traceroute'
package 'munin-node'
package 'gperftools-libs'
package 'gperftools-devel'
package 'nc'
package 'sipp'
package 'socat'
package 'tcpdump'
package 'xfsprogs'
package 'bonnie++'
package 'ngrep'
package 'libxslt-devel'
package 'libxml2-devel'
package 'httpd-devel'
package 'apr-devel'
package 'apr-util-devel'
package 'nagios'
package 'nagios-common'
package 'nagios-plugins-all'
package 'sendmail'
package 'links'
package 'lynx'
package 'patch'
package 'readline'
package 'readline-devel'
package 'zlib'
package 'zlib-devel'
package 'libyaml-devel'
package 'libffi-devel'
package 'openssl-devel'
package 'make'
package 'bzip2'
package 'autoconf'
package 'automake'
package 'libtool'
package 'bison'
package 'dstat'
package 'ethtool'
package 'ncftp'
package 'ftp'
package 'htop'
package 'strace'

file '/etc/ntp.conf' do
  content "server pool.ntp.org\n"
end

service 'cups' do
  action :stop
end

service 'cups' do
  action :disable
end

service 'ntpd' do
  action :stop
end

service 'ntpd' do
  action :disable
end

service 'ntpdate' do
  action :enable
end

service 'httpd' do
  action :stop
end

service 'httpd' do
  action :disable
end

puts "WTF!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
puts node.automatic_attrs['nginx'].inspect