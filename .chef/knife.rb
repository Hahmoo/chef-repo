current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "rchow"
client_key               "#{current_dir}/rchow.pem"
validation_client_name   "hahmoo-validator"
validation_key           "#{current_dir}/hahmoo.pem"
chef_server_url          "https://chef-server.mitns.com/organizations/hahmoo"
syntax_check_cache_path  "#{ENV['HOME']}/.chef/syntaxcache"
cookbook_path            ["#{current_dir}/../cookbooks"]
knife[:editor]="vim"
