;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	localhost. root.localhost. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	localhost.
@	IN	A	127.0.0.1
@	IN	AAAA	::1

1.zookeeper.com. IN   A 172.17.2.1
2.zookeeper.com. IN   A 172.17.2.2
3.zookeeper.com. IN   A 172.17.2.3
4.zookeeper.com. IN   A 172.17.2.4
5.zookeeper.com. IN   A 172.17.2.5
6.zookeeper.com. IN   A 172.17.2.6
7.zookeeper.com. IN   A 172.17.2.7
8.zookeeper.com. IN   A 172.17.2.8
9.zookeeper.com. IN   A 172.17.2.9
10.zookeeper.com. IN  A 172.17.2.10
