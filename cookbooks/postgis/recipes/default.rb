package "libxml2-dev"

remote_file "download postgis" do
path "/usr/local/src/postgis-2.0.1.tar.gz"
source "http://postgis.refractions.net/download/postgis-2.0.1.tar.gz"
end

bash "install postgis" do
cwd "/usr/local/src"
code <<-EOH
tar xvzf postgis-2.0.1.tar.gz
cd postgis-2.0.1
./configure --without-topology
make -j2
make install
EOH
end

bash "configure postgis" do
code <<-EOH    
createdb  -T template0 -O postgres -U postgres -E UTF8 template_postgis
createlang plpgsql -U postgres -d template_postgis
psql -d template_postgis -U postgres -f /usr/share/postgresql/9.1/contrib/postgis-2.0/postgis.sql
psql -d template_postgis -U postgres -f /usr/share/postgresql/9.1/contrib/postgis-2.0/spatial_ref_sys.sql
psql -d template_postgis -U postgres -f /usr/share/postgresql/9.1/contrib/postgis-2.0/legacy.sql
psql -d template_postgis -c "GRANT ALL ON geometry_columns TO PUBLIC;"
psql -d template_postgis -c "GRANT ALL ON spatial_ref_sys TO PUBLIC;"
ldconfig
EOH
end

