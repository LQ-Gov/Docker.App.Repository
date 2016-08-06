dns=172.17.0.2


nslookup $1 $dns | sed -n 5p | awk '{print $2}'

