include_recipe "build-essential"

nginx_url = node['opensips']['source']['url']
src_filepath = File.join(Chef::Config['file_cache_path'], 'opensips.tar.gz')

remote_file nginx_url do
  source nginx_url
  path src_filepath
  backup false
end

bash "compile_opensips_source" do
  cwd ::File.dirname(src_filepath)
  code <<-EOH
    tar zxf opensips.tar.gz -C opensips &&
    cd opensips && make
  EOH
end