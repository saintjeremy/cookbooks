#Install & enable Apache

package "apache2" do
  action :install
end

service "apache2" do
  action [:enable, :start]
end

# vhosts

node["lamp-stack"]["sites"].each do |sitename, data|
  document_root = "/var/www/html/#{sitename}"
  
   directory document_root do
    mode "0755"
    recursive true
  end

end
