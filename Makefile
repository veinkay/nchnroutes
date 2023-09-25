produce:
	git pull
	curl -o delegated-apnic-latest https://ftp.apnic.net/stats/apnic/delegated-apnic-latest
	curl -o china_ip_list.txt https://raw.githubusercontent.com/kiddin9/china_ip_list/main/china_ip_list.txt
	python3 produce.py
	mv routes4.conf /etc/bird/routes4.conf
	# sudo mv routes6.conf /etc/bird/routes6.conf
	/etc/init.d/bird4 reload
	# sudo birdc6 configure
