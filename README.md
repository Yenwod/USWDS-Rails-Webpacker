# USWDS, Rails 6, Webpacker, Heroku

Quickly create a modern marketing website based upon the [U.S. Web Design System (USWDS)](https://designsystem.digital.gov/) using
Rails 6. Use webpacker to import and package USWDS javascript and CSS.  Deploy to Heroku.

## Get started

Create a new Rails 6 app with no database, no action mailbox, no active storage, no action cable. Have webpacker setup for StimulusJS even though we won't be using it (yet).
```bash
$ rails new your-app-name --skip-active-record --webpack=stimulus --skip-action-mailbox --skip-active-storage --skip-action-cable
```
You should now have a working generic Rails app.  Start it with:
```bash
$ cd your-app-name
$ rails s
```
Navigate to http://localhost:3000/ and you should see:

<p align="center">
  <img width="520" height="444" src="https://vaxcalc.s3.amazonaws.com/images/uswds/1.png">
</p>

Create a main controller with a few actions and no stylesheets:
```bash
$ rails g controller main landing features pricing about contact resources --no-stylesheets
```

Add ```root 'main#landing'``` to your ```routes.rb``` 

Now it's going to get interesting.  Copy all the HTML code within the <body></body> tags of the USWDS [page template](https://federalist-3b6ba08e-0df4-44c9-ac73-6fc193b0e19c.app.cloud.gov/preview/uswds/uswds/release-2.7.0/components/preview/layout--landing.html) and paste it within your landing view.  Refresh http://localhost:3000/ and you should see something ugly like this:

<p align="center">
  <img width="520" height="444" src="https://vaxcalc.s3.amazonaws.com/images/uswds/2.png">
</p>

Install the [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli#download-and-install) or the [Foreman gem](https://github.com/ddollar/foreman) if you prefer.  You'll want the Heroku CLI if you'd like to deploy this app to Heroku as the last step of the tutorial.  

Making sure that you are in the working directory of this app, create the production and dev procfiles:

```bash
$ wget https://raw.githubusercontent.com/Yenwod/USWDS-Rails-Webpacker/master/Procfile
$ wget https://raw.githubusercontent.com/Yenwod/USWDS-Rails-Webpacker/master/Procfile.dev
```
Stop your rails server.  Start it up again with this new command:

```bash
$ heroku local -f Procfile.dev
```
If the server starts successfully, you'll see something like this:
<p align="center">
  <img src="https://vaxcalc.s3.amazonaws.com/images/uswds/3.png">
</p>

and (note the new port) [http://localhost:5000/](http://localhost:5000/) should again show the same ugly page.  

