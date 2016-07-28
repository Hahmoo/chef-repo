#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2016, HAHMOO
#
# All rights reserved - Do Not Redistribute
#

package "php5" do
  action :install
end

cookbook_file "/etc/php5/apache2/php.ini" do 
  source "php.ini"
  mode "0644"
end
