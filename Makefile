.PHONY: server develop

all: build

build:
	./node_modules/.bin/grunt build

clean:
	./node_modules/.bin/grunt clean

install:
	bundle install
	npm install
	./node_modules/.bin/grunt install

server:
	./node_modules/.bin/grunt server

develop:
	cd ../choc && make develop
	bower link choc --allow-root
