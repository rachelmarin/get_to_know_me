
<a href='https://www.freepik.com/photos/background'>Background photo created by kjpargeter - www.freepik.com</a>


Gemfile and environment.rb
This project is supported by Bundler and includes A Gemfile.

Run bundle install before getting started on the project.

As this project has quite a few files, an environment.rb is included that loads all the code in your project along with Bundler. You do not ever need to edit this file. When you see require_relative ../config/environment, that is how your environment and code are loaded.

Models
There are 3 Models in this MVC project.
ActiveRecord::Base.

Migrations
There are three migration DB's to create the users, signs and birthstone tables.

Users can input a first name, last name, username, and password, and have many signs.

signs and birthstones have content and belong to a user.

Associations
there are associations between the signs and users.

Home Page/Welcome
There is a controller action to load the home page through a view

Signs Index Page
There is a controller action that will load the signs index page through a view that will display all signs for the logged in user and other users. The signs index page respond to a GET request to /signs. If a user is not logged in, it will redirect to /login.

Create Sign
There are two controller actions, one to load the create sign form, and one to process the form submission. The sign is created and saved to the database. The form will load via a GET request to /signs/new and submitted via a POST to /signs.

Show Signs
There is a controller action that displays the information for a single Sign. The controller action responds to a GET request to /signs/:id.

Edit Signs
There are two controller actions to edit a sign: one to load the form to edit, and one to actually update the sign entry in the database. The form to edit a sign should be loaded via a GET request to /signs/:id/edit. The form should be submitted via a POST request to /signs/:id.

There is an edit link on the sign show page.

Delete sign
There is one controller action to delete a sign. The form to delete a sign is found on the sign show page.

The form to delete a sign is submitted via a POST request to signs/:id/delete.

Sign Up
There are two controller actions, one to display the user signup and one to process the form submission. The controller action that processes the form submission creates the user and saves it to the database.

The form to sign up will be loaded via a GET request to /signup and submitted via a POST request to /signup.

The signup action will also log the user in and add the user_id to the sessions hash.

The Signup link is on the the home page nav bar.

Log In
There are two more controller actions to process logging in: one to display the form to log in and one to add the user_id to the sessions hash.

The form to login should be loaded via a GET request to /login and submitted via a POST request to /login.

Log Out
There is a controller action to process a GET request to /logout to log out. The controller action will clear the session hash, and redirect the user to /login.

Protecting The Views
No one can create, read, edit or delete any signs unless they're logged in.

There are two helper methods current_user and logged_in?. These helper methods should block content if a user is not logged in.

A user should not be able to edit or delete the signs created by a different user. A user can only modify their own signs.