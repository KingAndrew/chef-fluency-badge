hostname = node['hostname']
#package 'fortune' do
#  action :install
#end

package 'cowsay' do
  action :install
  notifies :run, 'execute[cowsay]', :immediately
end
file '/etc/motd' do
  
end
execute 'cowsay' do
  command 'hostname | cowsay > /etc/motd'
  action :nothing
end

