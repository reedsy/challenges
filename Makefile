build:
	docker-compose build
	docker-compose run ruby bundle install
guard:
	docker-compose run ruby guard
rspec:
	docker-compose run ruby rspec
q2_run:
	docker-compose run ruby
q2_specs:
	docker-compose run ruby
