# Spring MVC Application

[![N|Solid](https://lh4.googleusercontent.com/-h3lqZ70HC7s/AAAAAAAAAAI/AAAAAAAAACg/L_xoSoDbU-c/s0-c-k-no-ns/photo.jpg)](https://spring.io/)

This application is a cloud-enabled, mobile-ready, persistent remote storage based on Spring, which has

  - A Fancy frontent based on Bootstrap v4
  - A Contact Form
  - Information about myself
  - A cool section to publicise your own country and learn naguages!
  - Connection to a remote database

# New Features!

  - Bootsrap framework
  - Small issues with context application in local/remote fixed
  - Index page completed
  - Some jQuery exercises included
  - CV


You can also:
  - Read information about Groefnia, an ~~imaginary~~ amazing country of Europe
  - Register as a Gorefnish citizen, read, update or delete your information ([CRUD](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete) functionalities in a persistant database)
  - Send a form to contact me or know where do I live
  - Visit other cool websites

# Tech

This app uses a number of open source projects to work properly:

#### Frontend
* [Bootstrap] - great UI boilerplate for modern web apps
* [jQuery] - JS library
* CSS3, HTML5, Javascript
[![N|Solid](https://static1.squarespace.com/static/571a021020c64744b886f00f/t/5737824520c6471cf0610644/1463255625811)]()


#### Backend
* Java
[![N|Solid](http://www.myexactamundo.com/wp-content/uploads/2014/05/java-logo.jpg)]()
* [Spring](https://spring.io/) - insert dependencies with beans! Easy to configure thru xml
* [Maven](https://maven.apache.org/) - build your project
* [JSP](https://en.wikipedia.org/wiki/JavaServer_Pages) - powerful tool to render the pages with information of the server side

#### Database
* [Postgresql 9](https://www.postgresql.org/)
* [JPA, Hibernate](https://en.wikipedia.org/wiki/Java_Persistence_API)

#### Deployment
* [Tomcat](http://tomcat.apache.org/)
* [Heroku](https://www.heroku.com/)-PaaS


The code is open for your acces in the [public repository](https://github.com/pdelho/SpringMVC) on GitHub.

### Installation

##### 1- Environment
###### 1.1 Install [Eclipse](https://eclipse.org/)
###### 1.2 Install Maven: use Eclipse marketplace to install it (suggestion: install also plugins for edit JSP, CSS, JS...)
###### 1.3 Install [Postgresql](https://www.postgresql.org/)
###### 1.4 (Optional) Install [Heroku cli](https://devcenter.heroku.com/articles/heroku-cli)
#
##### 2- Clone this repository
#

```sh
$ git clone https://github.com/pdelho/SpringMVC
```
##### 3- Configure your deployment environment
###### 3.1- Local: [Tomcat](https://www.mulesoft.com/tcat/tomcat-eclipse)
###### 3.2- Remote: [Heroku](https://devcenter.heroku.com/articles/git ). Execute 
#
```sh
$ heroku: create
```

##### 4- Set up your database
###### 4.1 Local:
Connect to your database [link](https://alvinalexander.com/blog/post/postgresql/log-in-postgresql-database)
* Set your pass and user. The credentials will be set during next step. The database url matches usally this pattern: 
```sh
postgresql://localhost:5432/postgres
```
* Execute in your database the query:
```sh
initTablePersons.sql
(Optional) initData.sql
```
###### 4.2 Remote:
* Go to https://dashboard.heroku.com/apps/your-app 
* In resources-addons, seach for postgresql and add it to your app (free plan available!). You will be given some credentials
* The database url matches usually this pattern:
```sh
postgresql://host:5432/postgres?user=user&password=pass&sslmode=require
```
* Execute in your database the query:
```sh
heroku pg:psql
initTablePersons.sql
(Optional) initData.sql
```
##### 5- Configure your application.properties
* Firslty, open your setenvironment.bat and set the path of your local-application.properties
* Secondly, edit your local-application.properties with your database url, user and password (accordingly to the previous step)
* Finally, execute setenvironment.bat (don't forget to discard the changes in local-properties once you have executed the script)

##### 6- Update Project
In eclipse: Maven-> Update. Or alt+F5

##### 7- Generate war
In eclipse: Run as-> Maven build... And set goals as: clean install

##### 8- Deploy your application
###### 8.1-Local: 
Run as-> Run on server (tomcat)
###### 8.2-Remote:
Run as-> Maven build... And set goals as: heroku:deploy-war

##### 9- Enjoy!
Verify the deployment by navigating to your server address in your preferred browser.
###### 9.1-Local: 
#
```sh
127.0.0.1:8000
```
###### 9.2-Remote 
#
```sh
http://your-app-name.herokuapp.com/
```
### ToDos

 - Write MORE Tests
 - Add Night Mode
 - Validation
 - AngularJS Exercises
 - Travelmap
 - Postgresql with two tables
 - Request DELETE: https://stackoverflow.com/questions/13629653/using-put-and-delete-methods-in-spring-mvc
 - Ajax to handle translation
 - Javascript google maps functionality: how far are you from groefnia?




License
----

MIT


**Free Software, Hell Yeah!**


