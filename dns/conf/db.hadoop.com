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

1.hadoop.com. IN   A 172.17.1.1
2.hadoop.com. IN   A 172.17.1.2
3.hadoop.com. IN   A 172.17.1.3
4.hadoop.com. IN   A 172.17.1.4
5.hadoop.com. IN   A 172.17.1.5
6.hadoop.com. IN   A 172.17.1.6
7.hadoop.com. IN   A 172.17.1.7
8.hadoop.com. IN   A 172.17.1.8
9.hadoop.com. IN   A 172.17.1.9
10.hadoop.com. IN  A 172.17.1.10
