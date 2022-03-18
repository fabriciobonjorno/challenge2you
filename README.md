# Challenge2You =)

This is an Challenge2You API.

It was designed thinking to list a catalog of movies and series, where it is possible to import through a CSV file to populate the database.

## Stack

- Rails 6.1.5
- ruby 3.0.3
- Postgres

## How to use it?

Basically we have two endpoints, one for import and another where we list movies and series.

## Building application

Ok, so first you must have:

1. Postgres installed.

2. Ruby >= 3.0.3 installed.

3. As we're on the beginning of project, don't forget to right configure your `datatabe.yml`.

4. And to *bundle* it with command:

```
bundle install
```
As soon as you have everything done you can follow


### 1. Building everything

If you want to rock and create your dev environment and data, it's possible to go through the usual way

1. Create databases
```
rails db:create
```

2. Run migrations
```
rails db:migrate
```

3. Start the server
```
rails s
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
