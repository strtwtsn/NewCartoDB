remote_file "Download Node" do
path "/usr/local/src/node-v0.6.0.tar.gz"
source "http://nodejs.org/dist/v0.6.0/node-v0.6.0.tar.gz"
action :create_if_missing
end

bash "Compile and install node" do
cwd "/usr/local/src"
code <<-EOH
tar zxf node-v0.6.0.tar.gz
cd node-v0.6.0
./configure
make
make install
EOH
end




remote_file "Download NPM" do
path "/usr/local/src/npm-1.0.106.tgz"
source "http://registry.npmjs.org/npm/-/npm-1.0.106.tgz"
action :create_if_missing
end

bash "Install npm" do
cwd "/usr/local/src/"
code <<-EOH
mkdir npm
tar -xvz npm-1.0.106.tgz -C /usr/local/src/npm
cd npm/package
./configure
make
make install
EOH
end


