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
