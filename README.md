# README

## About this project
This is the Private Events project from the Odin Project's Ruby on Rails course: https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-on-rails/lessons/private-events

This application is an event hosting application that uses Ruby on Rails, plus Javascript and CSS for styling and responsiveness. User authentications are handled with the Devise gem.

My goal was to provide the interface and functionality that would be the most intuitive and useful for users wanting to find, attend, and host events through this app.

## Functionality

After creating a profile and signing in, users can create their own events by filling in a web form. If the user selects the “private” option, the event can only be seen and attended by users the event creator sends an invite to using the “Send Invitations” button after navigating to that event’s page. The host of an event can also cancel or edit the event.

If the event host doesn’t select the “private” checkbox, the event is public and will show up on every user’s home page. They can click the “attend” button to add their name to the list of attendees (or “cancel” if they decide not to attend after all).

On each page displaying multiple events, events are sorted into relevant and useful categories for the user. For example, a user’s profile page lists the events they have hosted, upcoming events the user is attending, and events they’ve attended in the past.


## Potential future features

Chat rooms for attendees of an event.

User profile customization i.e., adding a profile pic, bio, etc.

Adding event to the user’s calendar.

## Deployment

Deployed with Heroku. [See live](https://secure-ocean-70873.herokuapp.com/). 

## Get started

Clone the repo to your local machine:

`$ git clone https://github.com/jmorton138/rails_private_events`

Install all of the necessary gems:

`$ bundle install`

Migrate the database:

`$ rails db:migrate`

Sample data is located in the seed file. To use this data, run:

`$ rails db:seed`

To run this application on your local server run:

`$ bin/rails server`

View the application at:

`http://127.0.0.1:3000`