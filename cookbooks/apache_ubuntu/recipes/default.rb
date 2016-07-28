#
# Cookbook Name:: apache_ubuntu
# Recipe:: default
#
# Copyright 2016, HAHMOO
#
# All rights reserved - Do Not Redistribute
#

package "apache2" do
  action :install
end

node["apache_ubuntu"]["sites"].each do |sitename, data| 
  document_root = "/content/sites/#{sitename}"
  
  directory document_root do
    mode "0755"
    recursive true
  end

template "/etc/apache2/#{sitename}.conf" do
  source "vhost.erb"
  mode "0644"
  variables(
    :document_root => document_root,
    :port => data["port"],
    :domain => data["domain"]
  )
  notifies :restart, "service[apache2]"
end

template "/content/sites/#{sitename}/index.html" do
  source "index.html.erb"
  mode "0644"
  variables(
    :site_title => data["site_title"],
    :comingsoon => "Coming Soon!"
  )
end  

end

service "apache2" do
  action [:enable, :start]
end

include_recipe "php::default"


