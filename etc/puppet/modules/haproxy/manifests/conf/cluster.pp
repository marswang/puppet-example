define haproxy::conf::cluster($port, $bind_ip = "0.0.0.0", $check_option=nil, $mode=nil) {
	if (nil == $check_option) {
		$check_option_string = ""
	} else {
		$check_option_string = "option $check_option"
	}

	if (nil == $mode) {
		$mode_string = ""
	} else {
		$mode_string = "mode $mode"
	}

	$file = "/etc/haproxy/conf.d/$name.cfg"
	$key = "$name $bind_ip:$port"
	exec {
		"haproxy_cluster_for-$key":
			command => "echo 'frontend $name $bind_ip:$port
	default_backend $name
	$mode_string

backend $name
	$mode_string
	balance roundrobin
	$check_option_string' > $file",
			onlyif => "test `grep '$key' $file | wc | awk '{print \$1}'` -eq 0",
			require => File["/etc/haproxy/conf.d"],
			notify => Service["haproxy"],
	}

	firewall::filter::allow {
		"$port":
	}
}
