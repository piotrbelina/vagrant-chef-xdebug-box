#
# Cookbook Name:: xdebug-box
# Recipe:: default
#

include_recipe 'apt'

include_recipe 'apache2'
include_recipe 'apache2::mpm_prefork'

include_recipe 'apache2::mod_php5'

package "php5-xdebug" do
  action :install
end

template "#{node['php']['ext_conf_dir']}/xdebug.ini" do
  # Overwrite xdebug.ini
  # (Temporary workaround for https://github.com/opscode-cookbooks/php/issues/108)
  source "xdebug.ini.erb"
  owner "root"
  group "root"
  mode "0644"
  action :create
  notifies :restart, resources("service[apache2]"), :delayed
end

apache_site '000-default' do
  enable false
end

web_app "xdebug-box" do
   template 'apache2.conf.erb'
   server_name node['xdebug-box']['hostname']
end