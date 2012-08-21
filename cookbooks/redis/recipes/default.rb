remote_file "Download redis" do
path "/usr/local/src/redis-2.4.16.tar.gz"
source "http://redis.googlecode.com/files/redis-2.4.16.tar.gz"
end

bash "Compile and install redis" do
cwd "/usr/local/src"
code <<-EOH
tar xzf redis-2.4.16.tar.gz
cd redis-2.4.16
make
EOH
end

