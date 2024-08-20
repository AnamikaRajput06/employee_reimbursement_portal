# Employee Reimbursement Portal

## Table of Contents

- [Install](#install)
- [Usage](#usage)

## Install

### Ruby Application

Install rvm and use ruby-3.3.1

```
curl -sSL https://get.rvm.io | bash
rvm use ruby-3.3.1

```

Install postgresql and create the user postgres

```
create role postgres with password secret;
# All this alter can be done in single step also ? Update this.
alter role postgres with superuser;
alter role postgres with login;

```

Create database and Run the database migration and populate the seed data using following commands,

```
rails db:setup
rails db:migrate
```

Refer the `seed.rb` file for user details

### Sample data

| User Email             | password  |
| ---------------------- | --------- |
| admin1@codemancers.com | admin@123 |
| admin2@codemancers.com | admin@123 |

Install the rails dependencies for the project,

```
bundle install
```

## Usage

Start the rails server,

```
rails s
```
