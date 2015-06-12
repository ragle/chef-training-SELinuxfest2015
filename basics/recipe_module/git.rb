package 'git' do
    action :install
end


file '/home/chef/.gitconfig' do 
    content "[user]\n name=Rob Agle\n email=ragle@sanukcode.net\n"
    user 'chef'
    group 'chef'
end
