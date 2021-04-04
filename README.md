# README

## Features
* Rails setup (postgres, SCSS, Simpleform, webpack, Fontawesome)
* Automted Tests with Github Actions
* Deployment with Heroku
* Authentification with [Devise](https://github.com/heartcombo/devise)
* Authorization with [Pundit](https://github.com/varvet/pundit)
* CRUD Actions
* [Geocoding](https://github.com/alexreisner/geocoder) for map display
* [Simpleform](https://github.com/heartcombo/simple_form)
* Search
* Autocomplete Address Bar with [Algolia Search](https://community.algolia.com/places/)
* Image Hosting with Active Storage and [Cloudinary](https://github.com/cloudinary)
* Animated typing with [Typed.js](https://mattboldt.com/demos/typed-js/)
* [Pry-byebug Debugger](https://github.com/deivid-rodriguez/pry-byebug)
* AJAX
* RESTful API

This README would normally document whatever steps are necessary to get the
application up and running.


## Live version
[View here](https://git.heroku.com/cocktails-kangaroo.git)


## API documentation
For interacting with the API, you need an API token. The Token can be generated in the admin panel's "Token" page.

The token must be added to each API request as an HTTP HEADER in the following format:
```
Authorization:
  Email [Your email here]
  Token [Your token here]
```


### Bartenders

#### GET /api/v1/bartenders/ - List Bartenders
Returns a list of bartenders, by default sorted by reverse creation date.

```json
// Response sample: 200 List of bartenders
// Content type: application/json
[
  {
    "id": 1,
    "name": "string",
    "address": "string",
    "user_id": 1,
    "latitude": 52.4989273,
    "longitude": 13.41784
  }
  {
    //
  }
]

```

#### GET /api/v1/bartenders/{bartender_id}/ - Get Bartender Details
Returns the details of a Bartender.

```json
// Response sample: 200 Detail of bartender
// Content type: application/json
{
  "id": 1,
  "name": "string",
  "address": "string",
  "user_id": 2,
  "latitude": 52.4989273,
  "longitude": 13.41784,
  "cocktails": [
    {
      "id": 6,
      "name": "string"
    },
    {
      //
    }
  ]
}

```

#### POST /api/v1/bartenders/ - Create Bartender
This endpoint allows you to create a bartender for a user.

```json
// Response sample: 201 Created bartender
// Content type: application/json
[
  {
    "restaurant": {
      "name": "string",
      "address": "string"
    }
  }
]

```

#### PATCH /api/v1/bartenders/{bartender_id}/
This endpoint allows you to create a bartender for a user.

```json
// Response sample: 200 Updated bartender
// Content type: application/json
[
  {
    "restaurant": {
      "name": "string",
      "address": "string"
    }
  }
]

```

#### DELETE /api/v1/bartenders/{bartender_id}/
This endpoint allows you to create a bartender for a user.

```json
// Response sample: 204 Delete bartender

```




Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
