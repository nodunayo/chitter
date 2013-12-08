#Chitter 
##Makers Academy Week 6 Test


###Aim

The aim of this test was to write a Twitter clone that will allow the users to post messages to a public stream.

It provided good practice of Cucumber/Capybara BDD approaches.

###Other details

The task was set by Enrique Comba Riepenhausen, [@ecomba](http://www.github.com/ecomba)

User management features were implemented manually, without the use of a gem.

*Bcrypt* was used to ensure password security

*Datamapper* and *PostgreSQL* were used for data storage

###Features

* Users can sign up, sign in, and sign out
* Users can post messages (peeps) to a public feed which is displayed on the homepage
* Any visitor can view this public feed
* Only registed users can post peeps
* Peeps have a timestamp and are placed in chronological order, with the lastest peep at the top of the page

###To do


* Further refactoring of the code, including partials, and separating out helpers
* Enable users to reply to individual peeps and start conversations
* User Websockets to enable real time posting of peeps and chat functionality
* CSS developments to improve design