hostname = node['hostname']
#package 'fortune' do
#  action :install
#end

package 'cowsay' do
  action :install
end

file '/etc/motd' do
  content "Hostname is this: #{hostname} {fortune | cowsay}" 
end
