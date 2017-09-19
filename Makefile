# crontabは以下のように

# LANG=ja_JP.UTF-8
# PATH=/home/masui/.rbenv/shims:/home/masui/.rbenv/bin:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin
# 12 4 * * * cd /www/www.pitecan.com/Serencast; make data
# 12 16 * * * cd /www/www.pitecan.com/Serencast; make data

.PHONY: data

data:
	cd data; make

demo:
	open http://localhost/~masui/Serencast/demo.html

program:
	coffee -c -b javascripts/gear.coffee
