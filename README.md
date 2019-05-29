# Currency Converter

A currency converter built with Rails using the https://currencydatafeed.com api.
The goal of this project is to learn the usage of an external api.

![](https://i.imgur.com/ORq6VyN.png)



## Getting Started

These instructions will get you a copy of the project up and running on your local machine.

### Prerequisites

```
docker
docker-compose
```
Installation instructions for docker and compose can be found [here](https://docs.docker.com/install).

### Installing and getting started


To get the app up and running in your machine execute the following commands

1. clone from git and build the container
```shell
git clone https://github.com/viniciuspietscher/CurrencyConverter.git
cd CurrencyConverter
docker-compose build
docker-compose run --rm app rails db:create db:migrate
```

2. add your CurrencyDataFeed api key
```shell
docker-compose run --rm app bash
EDITOR=vim bundle exec rails credentials:edit
```

3. run the application
```shell
docker-compose up
```

4. Access the application at
http://localhost:3000

## Project Stack

* [Ruby on Rails](http://rubyonrails.org)
* [Docker](https://docker.com)
* [RSpec](https://rspec.info/)
* [Bootstrap](https://getbootstrap.com/)
* [CurrencyDataFeed](https://currencydatafeed.com)

## Acknowledgments

* [OneBitCode](https://onebitcode.com) - Full Stack Web Development Bootcamp
