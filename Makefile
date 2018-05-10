build:
	docker-compose build
	docker-compose run ruby bundle install
guard:
	docker-compose run ruby guard
rspec:
	docker-compose run ruby rspec
lint:
	docker-compose run ruby rubocop
bash:
	docker-compose run ruby bash
q2:
	docker-compose run ruby -e 'puts "here"'

