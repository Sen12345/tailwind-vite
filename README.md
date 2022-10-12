<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## About This App

This is a Post App developed using Laravel version 9.19 using MVC framework, it is an app for friends or groups to post comments on just about any topic for discussion.  This app is for demonstrating the use of Laravel tools and functionalities to develop this application.  Below is a list of different technologies used throughout the develoopment life-cycle.  This project does't include any implimentation of Laravel starter kits with ready made auth scaffolding out of the box e.g Laravel Breeze or Laravel JetStream. The auth scaffolding has being been developed from scratch in order to demonstrate the use of Laravel Auth services from start to all the way up.
## Instalation
The IDE includes PHPSTORM for code editing, Xampp apache web server for local hosting and database, Composer installed globally, Ubuntu for Linux implimentation on Windows and Docker Desktop which has not being used in the project.
This project uses Vite the updated version of Laravel Mix that comes with this version of Laravel.
- Middleware service that regulates request from users to the application
- A login and registration system developed from scrach, this option allows you to apply laravel Auth service more effectively using the Auth() facade or the auth() helper.
- Blade templating framework for viewing, Models for logic and controllers use for preparing the view.
- Back-end including restful api services that interacts with the database and respond to request from users on the web.
- Users are able to post comments.
- Users are able to do CRUD on each post.
- Written policies that restrict what users can and can't do, e.g users are not able to delete other user's post
- The use of Laravel mailable class to send mail each time a user likes someone's post.
- Route model binding for eager loading to limit request numbers, and prevent N+1 problems with the Qloquent ORM approach
- Laravel debugbar for monitoring request 
- This project utalises Eloquent ORM for a more agile development process but this does not denote the fact that Query Builder is more effective interms of resources and speed on bigger projects

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
