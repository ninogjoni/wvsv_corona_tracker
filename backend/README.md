# Corona Tracking Backend

### Setup

To develop the Service locally, start the Docker stack:

```
docker-compose up -d
```
And start backend
```
(cd corona-server && mvn spring-boot:run)
```

To connect to prod db use:
```
(cd corona-server && \
    DB_URL=corona-tracker-dev.postgres.database.azure.com \
    DB_NAME=postgres \
    DB_USER=... \
    DB_PASSWORD=... \ 
    spring_profiles_active=prod mvn spring-boot:run)
```