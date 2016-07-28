default["apache_ubuntu"]["sites"]["ubuntu-node1"] = { "site_title" => "Rich website coming soon", "port" => 80, "domain"  => "ubuntu-node1" } 
default["apache_ubuntu"]["sites"]["ubuntu-node1a"] = { "site_title" => "Rich 1a website coming soon!", "port" => 80, "domain" => "ubuntu-node1b" }
default["apache_ubuntu"]["sites"]["ubuntu-node1c"] = { "site_title" => "Ubuntu website coming soon!", "port" => 80, "domain" => "ubuntu-node1c" }

case node["platform"]
when "centos"
  default["apache_ubuntu"]["package"] = "httpd"
when "ubuntu"
  default["apache_ubuntu"]["package"] = "apache2"
end





