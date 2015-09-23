# Docker - Go
Very rough boilerplate for a Go webapp using a separate container for the webapp and database.  This setup uses a volume attached to a container called **mysql_data** to allow for persistent storage.

### Requirements
- Docker 1.8 or above.

### Containers
- **Webppp (app)**: Ubuntu 14.04, Go 1.5.1
- **Database (db)**: MySQL 5.7

### Initial Setup
```
init.sh
```

### Run the app
```
run.sh
```

### *** !!! IMPORTANT !!! ***
**Windows users**: Ensure you set the **/etc/mysql/conf.d/custom.cnf** to read-only.
