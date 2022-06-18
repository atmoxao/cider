preview:
	rm -rf public
	rm -f cider .meta
	go build -o cider main.go
	./cider
	cd public
	http-server -p 8080

build:
	rm -rf public
	rm -f cider .meta
	go build -o cider main.go
	./cider
