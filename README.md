<p align="center"><img src="https://res.cloudinary.com/dtfbvvkyp/image/upload/v1566331377/laravel-logolockup-cmyk-red.svg" width="400"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>
<p align="center">NOT GOING TO REMOVE THIS LOGO....LOOKS COOL :stuck_out_tongue_closed_eyes: </p>

## Background

As a Javascript Developer I didn't want to install `PHP` and `Composer` for starting React development on Laravel Framework. So I created various docker scripts to help me out with the project setup like `composer install` and file permission issues. As an add-on, `npm ci && npm run prod` can also be run with a script, for all the PHP developers who don't want to install `npm` but interested in React.
Following are the versions of laravel and react:

- Laravel: ^7.x
- React: ^16.13.1

## Project Setup

- Step 1: Composer Install using command - `sh scripts/composer-install.sh`
- Step 2: NPM Install using command - `sh scripts/react-reload.sh`
- Step 3: Start Docker Instances using - `docker-compose up`
- Step 4: Open this url over browser - `http://localhost`

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
