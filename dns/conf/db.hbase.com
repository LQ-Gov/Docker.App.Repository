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

1.hbase.com. IN   A 172.17.5.1
2.hbase.com. IN   A 172.17.5.2
3.hbase.com. IN   A 172.17.5.3
4.hbase.com. IN   A 172.17.5.4
5.hbase.com. IN   A 172.17.5.5
6.hbase.com. IN   A 172.17.5.6
7.hbase.com. IN   A 172.17.5.7
8.hbase.com. IN   A 172.17.5.8
9.hbase.com. IN   A 172.17.5.9
10.hbase.com. IN  A 172.17.5.10
