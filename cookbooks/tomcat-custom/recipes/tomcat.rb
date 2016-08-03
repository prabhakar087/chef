package 'tomcat' do
 action :install
end


cookbook_file '/var/lib/tomcat/webapps/Spring3HibernateApp.war' do
  source 'Spring3HibernateApp.war'
  action :create
end


execute 'change permission' do
  command 'chmod 777  /var/lib/tomcat/webapps/Spring3HibernateApp.war'
end

service 'tomcat' do
 action [ :stop, :start ]
end
