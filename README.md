# Music Buddy

## About

This Rails application serves as a platform to look up song lyrics through the external MusixMatch API. Through the search bar in the header, look up a song by title, artist, album or even snippets of lyrics and you will be taken to a page with the search results. In addition to viewing song lyrics, you will be provided a link to view general artist information via the Wikipedia API, and also have the option to save those lyrics to your database. This application was created as the final project for module 3 of the backend program of Turing School of Software and Design

## Setup

*Run in Rails version 5.1.4 *

1. Clone this repository:

`git clone git@github.com:GabrielAfflitto/music-buddy.git`

2. Create and migrate the database:

`rake db:{create, migrate}`

3. Run bundle

`bundle install`

4. Run RSpec test suite:

`rspec`

5. Boot the server:

`rails s`

6. Visit localhost in the browser:

`https://localhost:3000`
