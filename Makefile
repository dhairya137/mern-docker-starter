build-dev:
	cd client && $(MAKE) build-dev
	cd server && $(MAKE) build

run-dev:
	docker-compose -f docker-compose-dev.yml up

### LOCAL (prod config)

build-local:
	cd client && $(MAKE) build-local
	cd server && $(MAKE) build

run-local:
	ENV=local docker-compose -f docker-compose-production.yml up
		

### PROD

build-production:
	cd client && $(MAKE) build-production
	cd server && $(MAKE) build	

run-production:
	ENV=production docker-compose -f docker-compose-production.yml up


