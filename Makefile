
create-superuser:
	docker compose run --rm app sh -c "python manage.py createsuperuser"

rebuild-app:
	docker compose -f docker-compose-deploy.yml build

deploy-app:
	docker compose -f docker-compose-deploy.yml up

down-volumes:
	docker compose -f docker-compose-deploy.yml down --volumes
