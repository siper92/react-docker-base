.PHONY: up stop down ssh help
.DEFAULT_GOAL := help

help:
	@echo ""
	@echo "usage: make COMMAND"
	@echo ""
	@echo "Commands:"
	@echo "     build           Build container."
	@echo "     up              Starts application containers and services."
	@echo "     storybook       Launch storybook."
	@echo "     precomit        Fix code style with prettier."
	@echo "     stop            Pause application containers and services."
	@echo "     down            Stops application containers and services."
	@echo "     ssh             Use it if you want to SSH into the PHP service."

build:
	$(info 🏗  Make: Building environment images.)
	# @docker-compose rm -vsf
	# @docker-compose down -v --remove-orphans
	@docker-compose build --no-cache
	# @make -s clean

# clean:
# 	@docker system prune --volumes --force

up:
	$(info 🔥 Make: Starting up.)
	@docker-compose up -d fe 
	
storybook:
	$(info 🔥 Make: Starting storybook.)
	@make up 
	@docker-compose run --rm fe npm run storybook

precomit:
	@docker-compose run --rm fe npm run fix

stop:
	$(info 🔥 Make: Stopping.)
	@docker-compose stop

down:
	$(info 💥 Make: Shutting down.)
	@docker-compose down

ssh:
	$(info 💻 Make: SSH into react container.)
	@docker-compose exec fe sh