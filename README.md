# [Laravel](https://laravel.com/) &middot; [React](https://reactjs.org/) &middot; [React-Router](https://reacttraining.com/react-router/)

## Background

As a Javascript Developer I didn't want to install `PHP` and `Composer` for React development on Laravel Framework. So I used docker and custom scripts to help me out with the project development like `composer install` and file permission issues. As an add-on, for all those developers who don't want to install `node` development  environment can also use this scaffold by utilizing various custom script discussed below.

Following are the versions of frameworks, libraries and tools used in this project:

- Laravel: ^7.x
- React: ^16.13.1
- Composer: 1.10.7
- Node: ^12.0
- PHP: 7.3

## Running Project

### Step 1: Composer Install

Assuming we don't have Composer installed on your machine, use this script to install dependency packages:

```bash
sh scripts/composer-install.sh
```

### Step 2: React Application

Assuming we don't have a Node development environment, use this script to bundle react scripts:

```bash
sh scripts/react-bundle.sh
```

### Step 3: env files

There are 2 env files which need to be created for this project:

- Project env file (for laravel):
`./.env`

- Database env file (for the local docker instance):
`./docker-custom/env/.docker-db`

**Note: For every env file there is a corresponding `{filename}.example` present in same directory as env file containing sample values.**

### Step 4: Running Docker compose

Simple. Nothing complicated here.

```bash
docker-compose up
```

### Step 5: Open browser

Navigate to `http://localhost`

## Scripts and its Usage

### NPM Scripts

Assuming we don't have a Node development environment, use following scripts to start react application bundling / node_modules installation:

| NPM | Script |
|--|--|
|npm run watch | `sh scripts/react-watch.sh`|
|npm run watch-poll | `sh scripts/react-watch-poll.sh`|
|npm run prod | `sh scripts/react-bundle.sh`|
|npm install | `sh scripts/npmi.sh [package_name] [options: '--save-dev', '--save', '-g']`|
| | example: `sh scripts/npmi.sh axios -g`|

**Note: If you are working on this application, execute commands for this step in a new terminal.**

### Composer and Artisan Scripts

Assuming we don't have Composer or PHP installed on your machine, use following scripts to install dependency packages / run artisan commands:

| NPM | Script |
|--|--|
|composer install | `sh scripts/composer-install.sh`|
|composer require | `sh scripts/composer-require.sh [vendor]/[package]:[version] [options: '--dev']`|
|php artisan | `sh scripts/php-artisan.sh [artisan_command] [arguments] [options]`|
| | example: `sh scripts/php-artisan.sh help migrate`|

**Note: If you are working on this application, execute commands for this step in a new terminal.**
