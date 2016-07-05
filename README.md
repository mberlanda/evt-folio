# evt-folio

The purpose of this project is to create a one-page template for events porfolio.

In order to create later an .sh file to automatically generate the template, I keep notes before of all the commands ran so far:
```
$ rails new evt-folio --skip-turbolinks --skip-test-unit --database=postgresql
~/evt-folio $ mv README.rdoc README.md
~/evt-folio $ git init
~/evt-folio $ git add .
~/evt-folio $ git commit -m "init"
```

####Database Setup
```bash
sudo apt-get install postgresql-9.4
sudo apt-get install libpq-dev
sudo su postgres -c psql
CREATE USER user WITH PASSWORD 'password' SUPERUSER;
sudo vim /etc/postgresql/9.4/main/pg_hba.conf
# change from 
   local   all             all                                peer
# to
   local   all             all                                trust
sudo service postgresql restart
```

####Gem Setup
```bash
~/evt-folio $ rails g simple_form:install
~/evt-folio $ rails g rspec:install
~/evt-folio $ rails g react:install
```

####Testing
```bash
~/evt-folio $ ./bin/rspec spec
~/evt-folio $ ./bin/rake spec:javascript
```

####Dump heroku DB and load locally
```bash
~/evt-folio $ curl -o latest.dump `heroku pg:backups public-url --app APP_NAME`
~/evt-folio $ $ sudo su postgres -c psql
psql (9.4.8)
Type "help" for help.

postgres=# CREATE DATABASE db_name;

~/evt-folio $ pg_restore --verbose --clean --no-acl --no-owner -h localhost -U username -d db_name latest.dump
```
