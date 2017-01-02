execute "apt-get update"
package 'haproxy' do
  action :install
end

cookbook_file "/etc/haproxy/haproxy.cfg" do
  source "haproxy.cfg"
end

file '/etc/default/haproxy' do
  content 'ENABLED=1'
  mode '0755'
  action :create
end

service 'haproxy' do
  action [ :enable, :start ]
end

package 'nfs-kernel-server' do
  action :install
end

service 'nfs-kernel-server' do
  action [ :enable, :start ]
end

package 'nfs-common' do
  action :install
end
