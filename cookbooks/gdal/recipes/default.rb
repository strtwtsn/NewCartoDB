bash "Install GDAL" do
code <<-EOH
add-apt-repository ppa:ubuntugis/ubuntugis-unstable
apt-get update
apt-get install -y libgdal-dev gdal-bin
EOH
end

