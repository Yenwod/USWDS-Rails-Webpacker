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
  <img width="200" height="200" src="https://vaxcalc.s3.amazonaws.com/images/tubes.png">
</p>

After app generation completes, we'll create procfiles:
```bash
$ copy straight from the repo!
```


At this point, you should see the famous "Yay, Rails!" when 

Create a main controller with a few basic pages that you may want. Do not generate stylesheets.
```bash
$ rails g controller main landing features pricing about resources --no-stylesheets
```

