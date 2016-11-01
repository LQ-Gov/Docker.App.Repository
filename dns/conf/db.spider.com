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

1.spider.com. IN   A 172.17.4.1
2.spider.com. IN   A 172.17.4.2
3.spider.com. IN   A 172.17.4.3
4.spider.com. IN   A 172.17.4.4
5.spider.com. IN   A 172.17.4.5
6.spider.com. IN   A 172.17.4.6
7.spider.com. IN   A 172.17.4.7
8.spider.com. IN   A 172.17.4.8
9.spider.com. IN   A 172.17.4.9
10.spider.com. IN  A 172.17.4.10
