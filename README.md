# Adopt Don't Shop

Welcome to Adopt Don't Shop, a web app project built on Rails as part of the curriculum for the Flatiron School.

## Ruby version

The Ruby version used is 2.3.3p222.

## Usage

The purposed of this site (and my eventual hope for it) is to encourage the adoption of animals from shelters instead of purchasing pets from breeders. With the overwhelming number of animals awaiting adoption, many are euthanized (if they are not held in no-kill shelters), something that will only happen with more frequency unless people seeking pets opt to adopt from these shelters instead of seeking out breeders.

## Installation

To view on a local environment after cloning the repo, install the required Gems:
```sh
$ bundle install
```

Create, migrate, and seed the local database:
```sh
$ rake db:create
$ rake db:migrate
$ rake db:seed
```

## Development
A local server can be started by running:
```sh
$ rails s
```

### Highlights
- Structure MVC framework with [Rails gem’s DSL (v5.1.5)](https://github.com/rails/rails/tree/5-1-stable)
- Use [OmniAuth](https://github.com/omniauth/omniauth) for OAuth authentication with Google
- Incorporate use of [jQuery](https://api.jquery.com/) to display content changes
- Design database schema and configure [ActiveRecord](https://guides.rubyonrails.org/v5.1/active_record_basics.html) associations
- Configure [bcrypt gem](https://github.com/bcrypt-ruby/bcrypt-ruby) for securing passwords


## Deployment

Adopt Don't Shop is deployed on Heroku [here](https://young-brushlands-18834.herokuapp.com/). If there are any bugs or issues, please raise an issue on the GitHub repo and specify that the problem is with the hosted version of the app.
