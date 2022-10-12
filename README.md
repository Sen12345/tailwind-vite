<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## About This App

This is an app developed using Laravel version 9, it is an app for friends or groups to post comments on just about any topic for discussion.  This app is for demonstrating the use of Laravel tool and functionalities useed to develop this application.  Below is a list of different technologies used throughout the develoopment life-cycle.  This project does't include any implimentation of Laravel starter kits with ready made auth scaffolding out of the box e.g Laravel Breeze or Laravel JetStream.
- Middleware service that regulates request from users to the application
- A login and registration system developed from scrach, this option allows you to apply laravel Auth service more effectively using the Auth() facade or the auth() helper.
- MVC technology including blade templating framework, Models for logic and controllers use for preparing the view.
- Back-end including restful api services that interacts with the database and respond to request from users on the web.
- Users are able to post comments.
- Users are able to do CRUD on each post.
- Written policies that restrict what users can and cant do e.g users are not able to delete other user's post
- The use of Laravel mailable class tosend mail each time a user likes someone's post.
- Route model binding for eager loading to limit request numbers and using model instances within routes
- Laravel debugbar for monitoring request 
- This project utalises Eloquent ORM for a more agile development process but this does not denote the fact that Query Builder is effective interms of resources and speed on bigger projects.

Laravel is accessible, powerful, and provides tools required for large, robust applications.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
