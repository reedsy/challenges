build:
	docker-compose build
	docker-compose run ruby bundle install
neo4j:
	docker-compose run neo4j
guard:
	docker-compose run ruby guard
rspec:
	docker-compose up
lint:
	docker-compose run ruby rubocop
bash:
	docker-compose run ruby bash
