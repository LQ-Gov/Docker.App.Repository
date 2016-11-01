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

1.ubuntu.com. IN   A 172.17.6.1
2.ubuntu.com. IN   A 172.17.6.2
3.ubuntu.com. IN   A 172.17.6.3
4.ubuntu.com. IN   A 172.17.6.4
5.ubuntu.com. IN   A 172.17.6.5
6.ubuntu.com. IN   A 172.17.6.6
7.ubuntu.com. IN   A 172.17.6.7
8.ubuntu.com. IN   A 172.17.6.8
9.ubuntu.com. IN   A 172.17.6.9
10.ubuntu.com. IN  A 172.17.6.10
