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

execute "mkdir -p /home/vagrant/nfs-artifacts"

cookbook_file "/etc/exports" do
  source "exports"
end

execute "exportfs -v"

service 'nfs-kernel-server' do
  action [ :enable, :restart ]
end

package 'nfs-common' do
  action :install
end
