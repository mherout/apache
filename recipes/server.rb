#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

##### para instalar o paquete apache ######
package "httpd"



##### para que busque o html e devolva un texto con IP y HOSTNAME sacados de ohai
#file '/var/www/html/index.html' do
# content "<h1>La cosa marcha!!!</h1>
#</h2>ipaddress: #{node['ipaddress']}</h2>
#</h2>hostname: #{node['hostname']}</h2>
#"
#
# Cambios para que busque plantilla html

template 'var/www/html/index.html' do
source 'index.html.erb'
end


##### para activar o servicio http no arranque (enable:) e que o arranque agora #####
service 'httpd' do
 action [ :enable, :start ]
 end



