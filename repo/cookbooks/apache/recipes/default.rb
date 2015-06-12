#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
#
package "httpd"

package "#{package_name}"

service "httpd" do
    supports :restart => :true
    action [:enable, :start]
end

template "/var/www/html/index.html" do
    source "index.html.erb"
    mode "0644"
    owner "root"
    group "root"
end
