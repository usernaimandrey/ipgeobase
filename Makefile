install:
	bundle install

test:
	rake test

lint:
	bundle exec rubocop lib
