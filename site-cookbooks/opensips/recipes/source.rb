include_recipe 'build-essential'

package 'rtpproxy'
package 'mysql-libs'
package 'mysql-devel'

nginx_url = node['opensips']['source']['url']
basename = ::File.basename(nginx_url)
src_filepath = File.join((Chef::Config['file_cache_path'] || '/tmp'), basename)

directory ::File.dirname(src_filepath) do
  action :create
end

remote_file src_filepath do
  source nginx_url
  backup false
end

bash "compile_opensips_source" do
  cwd ::File.dirname(src_filepath)
  code <<-EOH
tar -zxf #{basename}
cd #{basename.gsub('_src', '-tls').gsub('.tar.gz', '')} &&
make include_modules="#{node['opensips']['source']['include_modules'].join(' ')}" prefix="#{node['opensips']['source']['prefix']}" all &&
make include_modules="#{node['opensips']['source']['include_modules'].join(' ')}" prefix="#{node['opensips']['source']['prefix']}" install
EOH
end

user "opensips" do
  comment "opensips"
  system true
  shell "/bin/false"
end
