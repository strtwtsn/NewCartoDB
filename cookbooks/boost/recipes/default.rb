bash "Install boost" do
code <<-EOH
sudo add-apt-repository ppa:mapnik/boost
sudo apt-get update
sudo apt-get install -y libboost-dev libboost-filesystem-dev libboost-program-options-dev libboost-python-dev libboost-regex-dev libboost-system-dev libboost-thread-dev 
EOH
end

