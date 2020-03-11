build:
	docker build -t sitebuilder .
	docker run -t -i -v $(shell pwd)/src:/data sitebuilder gulp jekyll-build
	rm -rf assets
	mv src/_site/* .
