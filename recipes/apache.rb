#Install & enable Apache

package "apache2" do
  action :install
end

service "apache2" do
  action [:enable, :start]
end


#Virtual Hosts Files

node["lamp-stack"]["sites"].each do |sitename, data|
end
