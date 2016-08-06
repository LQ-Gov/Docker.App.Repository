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

1.storm.com. IN   A 172.17.3.1
2.storm.com. IN   A 172.17.3.2
3.storm.com. IN   A 172.17.3.3
4.storm.com. IN   A 172.17.3.4
5.storm.com. IN   A 172.17.3.5
6.storm.com. IN   A 172.17.3.6
7.storm.com. IN   A 172.17.3.7
8.storm.com. IN   A 172.17.3.8
9.storm.com. IN   A 172.17.3.9
10.storm.com. IN  A 172.17.3.10
