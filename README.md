# Challenge2You =)

This is an Challenge2You API.

It was designed thinking to list a catalog of movies and series, where it is possible to import through a CSV file to populate the database.

## Stack

- Rails 7.0.2.3
- ruby 3.1.1
- Postgres

## How to use it?

Basically we have two endpoints, one for import and another where we list movies and series.

## Building application

Ok, so first you must have:

1. Postgres installed.

2. Ruby >= 3.1.1 installed.

3. As we're on the beginning of project, don't forget to right configure your `datatabe.yml`. In the project there are 2 database examples, one for use with Docker and one without Docker.

As soon as you have everything done you can follow


### 1. Building everything

If you want to rock and create your dev environment and data, it's possible to go through the usual way

1. And to *bundle* it with command:
```
bundle install
```

2. Create databases
```
rails db:create
```

3. Run migrations
```
rails db:migrate
```

### 2. Building everything with docker

If you want to use Docker to create your development and data environment, you can follow the path below.

#### Necessary documentation:
- [Docker](https://docs.docker.com/engine/install/ubuntu/)
- [Docker Compose](https://docs.docker.com/compose/install/)

1. Building the project
```
docker-compose build
```

2. Start the application
```
docker-compose up
```

3. Create database
```
docker-compose run web rails db:create
```

4. Run migrations
```
docker-compose run web rails db:migrate
```

If you want to run tests: 
```
bundle exec rspec
```

## How can I use API?

Well, we here a file if you want to import on Postman

[Challenge2you.postman_collection.zip](https://github.com/fabriciobonjorno/challenge2you/files/8295849/Challenge2you.postman_collection.zip)

### Scopes

We have 2 base scopes: 
- **/catalogs** 
  ![list](https://user-images.githubusercontent.com/28460996/158917476-4143ecc7-647c-4f6f-80ef-4fdcc92b6291.png)  

- **/catalogs/import**
  ![import](https://user-images.githubusercontent.com/28460996/158917290-0dc74834-d671-4744-9287-1c755556aa08.png)
  

To perform the searches, just inform the parameters as shown in the example. 
<br><br>
exemple:
- **/catalogs?release_year=2020&genre=movie&country=united** 
  ![filter](https://user-images.githubusercontent.com/28460996/158925007-8731d537-d7e4-4a2b-92e8-1582776795fb.png)

