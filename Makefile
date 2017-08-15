.PHONY: data

data:
	cd data; make

demo:
	open http://localhost/~masui/Serencast/demo.html

program:
	coffee -c -b javascripts/gear.coffee
