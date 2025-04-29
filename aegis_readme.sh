#!/bin/bash

curl --max-time 10 -k \
	-o rap.html.tmp 'https://p99sanctum.com/index.php/Points' \
	-H 'Connection: keep-alive' \
	-H 'sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="98", "Google Chrome";v="98"' \
	-H 'sec-ch-ua-mobile: ?0' \
	-H 'sec-ch-ua-platform: "Linux"' \
	-H 'DNT: 1' \
	-H 'Upgrade-Insecure-Requests: 1' \
	-H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36' \
	-H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
	-H 'Sec-Fetch-Site: none' \
	-H 'Sec-Fetch-Mode: navigate' \
	-H 'Sec-Fetch-User: ?1' \
	-H 'Sec-Fetch-Dest: document' \
	-H 'Accept-Language: en-US,en;q=0.9' \
	-L -b cookies.txt

if grep -q "</html>" rap.html.tmp; then
	if grep -q Paladin rap.html.tmp; then
		mv rap.html.tmp rap.html
	fi
fi
