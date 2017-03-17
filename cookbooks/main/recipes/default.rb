#Installing  Git
package "git-core"

#Creating Linux User
user node[:user][:name] do
	password node[:user][:password]
	gid "admin"
	supports manage_home:true
end

#Installing  Apache
package 'apache2'
#Start And Enabling  Apache
service 'apache2' do
  supports :status => true
  action [:enable, :start]
end
#Apache Home Page From Template
template '/var/www/html/index.html' do
  source 'index.html.erb'
end

# Start MySql Service
mysql_service 'default' do
  version node[:database][:version]
  bind_address '0.0.0.0'
  port node[:database][:port]
  data_dir '/data'
  initial_root_password node[:database][:database]
  action [:create, :start]
end