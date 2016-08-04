name "dev"
description "This is Dev Environment"
cookbook "apache_ubuntu", "= 0.1.0"
override_attributes({
	"author" => {
		"name" => "my new author name"
	}
})
