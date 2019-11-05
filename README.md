# Project
**A simple Rails 5.2 app that was built to create a simple destination website for Jericoacoara CE Brazil.**

Live app at https://visit-jeri.herokuapp.com/

# Gems Used
* `activeadmin` for easy content management
* `devise` for managing access to content management
* `ckeditor` to facilitate content html
* `i18n-active_record` to facilitate new languages and/or new translations being added to the project
* `friendly_id` to make URLs better for SEO
* `aws-sdk-s3` (and Heroku Bucketeer) to make images simple to upload, manage, and show on website

**Testing**
* `rspec-rails` and `capybara` to simluate visitors playing on the website
* `simplecov` to make sure no line of code is left behind
* `factory_bot_rails` to quickly create tons of fake stuff to test with

**Performance**
* `bullet` to avoid those sneaky +1 queries!



**Template**
Desired: https://www.templatemonster.com/pt/demo/79863.html
Used: https://mobirise.com/bootstrap-template/best-bootstrap-templates/#
