package "haproxy" do
    action :install
end


template "/etc/haproxy/haproxy.cfg" do
    source "haproxy.cfg.erb"
    owner "root"
    group "root"
    mode "0644"
    notifies :restart, "service[haproxy]"
end

service "haproxy" do
    supports :restart => :true
    action [:enable, :start]
end

