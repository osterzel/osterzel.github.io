build:
	docker build -t sitebuilder .
	docker run -t -i -v $(shell pwd)/src:/data sitebuilder gulp jekyll-build
	mv src/_site/* .
