#
# Cookbook:: apache
# Recipe:: default
# 
# Copyright:: 2017, The Authors, All Rights Reserved.
if "rhel" == node['platform_family']
  package = "httpd"
elsif  "debian" == node['platform_family']
  package = "apache2"
end

package 'apache2' do
  package_name package
  action :install
 end

service 'apache2' do
  service_name 'httpd'
  action [:start, :enable]
end

