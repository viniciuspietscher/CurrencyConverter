# Currency Converter

A currency converter built with Rails using the https://currencydatafeed.com api.
The goal of this project is to learn the usage of an external api and the Rails credentials feature.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

```
docker
docker-compose
```
Installation instructions for docker and compose can be found [here](https://docs.docker.com/install).

### Installing and getting started

To get the app up and running in your machine execute the following commands

```shell
git clone https://github.com/viniciuspietscher/CurrencyConverter.git
cd CurrencyConverter
docker-compose build
docker-compose run --rm app rails db:create db:migrate
docker-compose up
```

Access the application at
http://localhost:3000

#### Heroku Access
(Add address later)

## Project Stack

* [Ruby on Rails v5.2](http://rubyonrails.org)
* [Docker](https://docker.com)
* [PostgreSQL](https://www.postgresql.org/)


## Acknowledgments

* [OneBitCode](https://onebitcode.com) - Full Stack Web Development Bootcamp
