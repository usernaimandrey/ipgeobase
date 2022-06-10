install:
	bundle install

test:
	bundle exec rake test

lint:
	bundle exec rubocop lib

.PHONY: test