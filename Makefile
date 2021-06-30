
dev:
	bundle exec jekyll serve -w

install:
	bundle install --path vendor/bundle

clean:
	rm -rf _site .jekyll-cache vendor