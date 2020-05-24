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
Navigate to http://localhost:3000 and you should see:

<p align="center">
  <img width="434" height="370" src="https://vaxcalc.s3.amazonaws.com/images/uswds/1.png">
</p>

Create a main controller with a few actions and no stylesheets:
```bash
$ rails g controller main landing features pricing about contact resources --no-stylesheets
```

Add ```root 'main#landing'``` to your ```routes.rb``` 

Now it's going to get interesting.  Copy all the HTML code within the <body></body> tags of the USWDS [page template](https://federalist-3b6ba08e-0df4-44c9-ac73-6fc193b0e19c.app.cloud.gov/preview/uswds/uswds/release-2.7.0/components/preview/layout--landing.html) and paste it within your landing view.  Refresh http://localhost:3000 and you should see something ugly like this:

<p align="center">
  <img width="434" height="370" src="https://vaxcalc.s3.amazonaws.com/images/uswds/2.png">
</p>


