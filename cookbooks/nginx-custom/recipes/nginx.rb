package [ 'epel-release', 'nginx' ] do
 action :install
end


cookbook_file '/etc/nginx/nginx.conf' do 
  source 'nginx.conf' 
end

#file '/etc/nginx/conf.d/ciapp.conf' do 
#  content IO.read('./ciapp.conf') 
#end

file '/etc/nginx/conf.d/default.conf' do
  action :delete
end

service 'nginx' do
 action [ :enable, :start ]
end
