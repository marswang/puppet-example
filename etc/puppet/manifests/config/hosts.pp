class config::hosts {
	$ip_list = {
		wan_gw_vip  => 254, #公网入口机的VIP，子网内其它机器的网关
		dns_vip => 250,
		vpn_gw_vip => 253,
		puppet-server_vip => 10, #puppet server的VIP
		yum-mirror_sys_vip => 11, #yum本地镜像服务器的VIP
		nfs_sys_vip => 12, #NFS服务器VIP
		ntp_sys_vip => 12, #NTP服务器VIP
		puppet-server1_sys => 21,
		puppet-server2_sys => 22,
		yum-mirror1_sys => 23,
		yum-mirror2_sys => 24,
		nfs1_sys => 25,
		nfs2_sys => 26,
		svn1_sys => 27,
		svn2_sys => 28,
		lan_lb_vip => 50, #局域网内负载均衡器的VIP，供nginx，php script在配置文件中使用
		mysql_db_vip => 50,
		tracker_dfs_vip => 50,
		sphinx_se_vip => 50,
		php_app_vip => 50,
		acp-php_app_vip => 50,
		mysql1_db => 51, #店铺数据库1号
		mysql2_db => 52,
		mysql3_db => 53,
		sphinx1_se => 54, #商品搜索引擎1号
		sphinx2_se => 55,
		sphinx3_se => 56,
		storage1_dfs => 57, #FastDFS存储服务器1号
		storage2_dfs => 58,
		storage3_dfs => 59,
		tracker1_dfs => 60, #FastDFS跟踪服务器1号
		tracker2_dfs => 61,
		tracker3_dfs => 62,
		mem1_cache => 63,
		mem2_cache => 64,
		mem3_cache => 65,
		redis1_cache => 66,
		redis2_cache => 67,
		redis3_cache => 68,
		mongo1_db => 69,
		mongo2_db => 70,
		mongo3_db => 71,
		nginx1_web => 101, #nginx web服务器1号
		nginx2_web => 102,
		nginx3_web => 103,
		php1_app => 111, #PHP应用服务器1号，用于消费者访问
		php2_app => 112,
		php3_app => 113,
		acp-php1_app => 114, #PHP后台应用服务器1号，用于运营管理后台，支持fastdfs extension
		acp-php2_app => 115,
		acp-php3_app => 116,
		lan1_lb => 206, #局域网负载均衡器1号
		lan2_lb => 207,
		centos0_vmtpl => 208, #centos64 虚拟机模板1号，在最小化安装centos的基础上，删除了网卡文件，预置了init脚本
		centos1_vmtpl => 209,
		centos2_vmtpl => 210,
		centos3_vmtpl => 211,
		centos4_vmtpl => 212,
		test_tool => 218, #沙盒测试机，兼任编译工具机
		tool_web => 219, #WEB工具机
		wan1_gw => 221, #外网入口机1号，兼任端口转发路由器、http负载均衡器、VPN服务器
		wan2_gw => 222,
		vnc1_sys => 223, #VNC服务器1号，兼任虚拟机管理工具（virt manager）
		vnc2_sys => 224
	}
	
	$ip_keys = [
		wan_gw_vip,
		dns_vip,
		vpn_gw_vip,
		puppet-server_vip,
		yum-mirror_sys_vip,
		nfs_sys_vip,
		puppet-server1_sys,
		puppet-server2_sys,
		yum-mirror1_sys,
		yum-mirror2_sys,
		nfs1_sys,
		nfs2_sys,
		svn1_sys,
		svn2_sys,
		lan_lb_vip,
		mysql_db_vip,
		tracker_dfs_vip,
		sphinx_se_vip,
		php_app_vip,
		acp-php_app_vip,
		mysql1_db,
		mysql2_db,
		mysql3_db,
		sphinx1_se,
		sphinx2_se,
		sphinx3_se,
		storage1_dfs,
		storage2_dfs,
		storage3_dfs,
		tracker1_dfs,
		tracker2_dfs,
		tracker3_dfs,
		mem1_cache,
		mem2_cache,
		mem3_cache,
		redis1_cache,
		redis2_cache,
		redis3_cache,
		mongo1_db,
		mongo2_db,
		mongo3_db,
		nginx1_web,
		nginx2_web,
		nginx3_web,
		php1_app,
		php2_app,
		php3_app,
		acp-php1_app,
		acp-php2_app,
		acp-php3_app,
		lan1_lb,
		lan2_lb,
		centos0_vmtpl,
		centos1_vmtpl,
		centos2_vmtpl,
		centos3_vmtpl,
		centos4_vmtpl,
		test_tool,
		tool_web,
		wan1_gw,
		wan2_gw,
		vnc1_sys,
		vnc2_sys
	]
}
