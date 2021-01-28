package "unzip" do
  action :install
end

package "apache2" do
  action :install
end

service "apache2" do
  action [:enable, :start]
end

package "python" do
  action :install
end

mysql_service 'default' do
  port '3306'
  version '8.0'
  initial_root_password 'change me'
  action [:create, :start]
end

git "download_app" do
  repository 'git://github.com/chef-training/Awesome-Appliance-Repair.git'  
  revision 'master'
  action :sync
end

bash 'install_app' do
code <<-EOH
    cd /download_app
	mv AAR /var/www
	sudo su root
	python AARInstall.py
  EOH
end

