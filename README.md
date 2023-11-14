# ar-models-of-db-book

## requirement

* sqlite3 db file
  * db-book.com

## work with irb

install gems

```
% bundle install
```

```
% irb
> require './app/database_setup'

# queries student
> Student.all

```

## work with mysql, postgresql

install mysql or postgresql client library.  
for example homebrew:

```
% brew install mysql-client
% brew install libpg
```

then, install gems.

```
% bundle install
```

need to create new database university with using DDL.sql(db-book.com).
then, use mysql or postgresql as below.

```
# use mysql
% export DB_TYPE=mysql
% irb
% require './app/database_setup' 

# use postgres
% export DB_TYPE=postgresql
% irb
% require './app/database_setup' 
```

### mysql and postgresql environment

see: https://gist.github.com/youknowcast/7df2991de81e7812585892bed201b91b

change app/config/*.yml like below:

mysql.yml
```yaml
adapter: 'mysql2'
host: mysql-db
port: 3306
database: 'university'
username: 'root'
password: 'password'
```

postgresql.yml
```yaml
adapter: 'postgresql'
host: postgres-db
port: 5432
database: 'university'
username: 'postgres'
password: 'password'
```