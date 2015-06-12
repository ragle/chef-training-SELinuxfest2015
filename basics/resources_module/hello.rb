file "hello.txt" do
    action :create
    content "Hello, world!\n"
    mode "0644"
    owner "chef"
    group "chef"
end
