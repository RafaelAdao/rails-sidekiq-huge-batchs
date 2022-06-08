start:
	docker-compose up

restart: start

stop:
	docker-compose down

create:
	docker-compose run web rake db:create

rebuild:
	docker-compose up --build

full_rebuild:
	docker-compose run web bundle install
	make rebuild