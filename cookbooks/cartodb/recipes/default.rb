package "unzip"

remote_file "Download CartoDB files" do
path "/usr/local/src/cartodb.zip"
source "https://github.com/Vizzuality/cartodb/zipball/master"
end


bash "Extract CartoDB files" do
cwd "/usr/local/src/"
code <<-EOH
mkdir cartodb
unzip /usr/local/src/cartodb.zip -d /usr/local/src/cartodb
EOH
end

