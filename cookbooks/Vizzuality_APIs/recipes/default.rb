git "Checkout CartoDB SQL API" do
repository "https://github.com/Vizzuality/CartoDB-SQL-API.git"
destination "/usr/local/src/CartoDB-SQL-API"
end

bash "Install CartoDB SQL API" do
cwd "/usr/local/src/"
code <<-EOH
cd /usr/local/src/CartoDB-SQL-API
npm install
EOH
end

git "Checkout Windshaft-cartodb" do
repository "https://github.com/Vizzuality/Windshaft.git"
destination "/usr/local/src/Windshaft"
end

bash "Install Windshaft-cartodb" do
cwd "/usr/local/src"
code <<-EOH
cd /usr/local/src/Windshaft
npm install
EOH
end

