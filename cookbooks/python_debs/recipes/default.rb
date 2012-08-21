package "python-setuptools"
package "python-dev"

bash "Install PIP" do
code <<-EOH
easy_install pip
pip install -r /usr/local/src/cartodb/Vizzuality*/python_requirements.txt
EOH
end

