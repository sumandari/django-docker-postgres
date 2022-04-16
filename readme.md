### spin container, migrate and collectstatic

```
docker-compose -f docker-compose.prod.yml up -d --build

docker-compose -f docker-compose.prod.yml exec web python manage.py migrate --noinput
docker-compose -f docker-compose.prod.yml exec web python manage.py collectstatic --no-input --clear
```


### access the prod instance

- Test your admin page on http://localhost:8888/admin