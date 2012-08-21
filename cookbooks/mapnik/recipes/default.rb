package "g++"
package "cpp"
package "libicu-dev"
package "libboost-filesystem-dev"
package "libboost-program-options-dev"
package "libboost-python-dev"
package "libboost-regex-dev"
package "libboost-system-dev"
package "libboost-thread-dev"
package "python-dev"
package "libxml2"
package "libxml2-dev"
package "libfreetype6"
package "libfreetype6-dev"
package "libjpeg-dev"
package "libltdl7"
package "libltdl-dev"
package "libpng-dev"
package "libproj-dev"
package "libtiff-dev" 
package "libtiffxx0c2"
package "libcairo2" 
package "libcairo2-dev"
package "python-cairo"
package "python-cairo-dev"
package "libcairomm-1.0-1" 
package "libcairomm-1.0-dev"
package "ttf-unifont"
package "ttf-dejavu" 
package "ttf-dejavu-core"
package "ttf-dejavu-extra"
package "git" 
package "build-essential" 
package "python-nose" 
package "clang" 
package "libgdal1-dev" 
package "python-gdal"  
package "postgresql-9.1" 
package "postgresql-server-dev-9.1"
package "postgresql-contrib-9.1"
#package "postgresql-9.1-postgis"
package "libsqlite3-dev"
package "libgeotiff-dev"

#bash "Install libgeotiff" do
#code <<-EOH
#apt-get update
#apt-get install -y libgeotiff1.2=1.2.5-1 libgeotiff-dev=1.2.5-1
#EOH
#end

git "Checkout Mapnik" do
repository "https://github.com/mapnik/mapnik.git"
destination "/usr/local/src/mapnik"
end

bash "Install Mapnik" do
cwd "/usr/local/src"
code <<- EOH
cd /usr/local/src/mapnik
./configure
make
make install
EOH
end

