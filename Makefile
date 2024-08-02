
create-superuser:
	docker compose run --rm app sh -c "python manage.py createsuperuser"

deploy-app:
	docker compose -f docker-compose-deploy.yml build
	docker compose -f docker-compose-deploy.yml up

down-volumes:
	docker compose -f docker-compose-deploy.yml down --volumes
	docker compose down --volumes

