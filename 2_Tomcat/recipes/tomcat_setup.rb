package [ "tomcat", "tomcat-webapps" ] do
  action :install
end

package "tomcat-admin-webapps" 

cookbook_file '/etc/tomcat/tomcat-users.xml' do
    source 'users.xml'
    mode '0755'
    owner 'tomcat'
    group 'tomcat'
    action :create
end

service "tomcat" do
  action [ :enable, :start ]
end