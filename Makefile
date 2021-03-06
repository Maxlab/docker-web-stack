db-backup:
	bin/dbs.backup.sh

db-restore:
	bin/dbs.restore.sh

db-cmd:
	bin/mysql.sh

upgrade:
	bin/upgrade.sh

build:
	bin/images.build.sh

push:
	bin/images.push.sh

start:
	docker-compose start

stop:
	docker-compose stop

restart:
	docker-compose restart

up:
	docker-compose up -d

clean:
	docker ps --all --format="{{.ID}}" | xargs docker rm --force

crontabs:
	docker-compose exec cron crontab -l

