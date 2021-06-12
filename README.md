# Hello World API: Ruby on Rails Sample

You can use this sample project to learn how to secure a simple [Ruby on Rails](https://rubyonrails.org/) API server using Auth0.

The `starter` branch offers a working API server that exposes three public endpoints. Each endpoint returns a different type of message: public, protected, and admin.

The goal is to use Auth0 to only allow requests that contain a valid access token in their authorization header to access the protected and admin data. Additionally, only access tokens that contain a `read:admin-messages` permission should access the admin data, which is referred to as [Role-Based Access Control (RBAC)](https://auth0.com/docs/authorization/rbac/).

[Check out the `add-authorization` branch]() to see authorization in action using Auth0.

[Check out the `add-rbac` branch]() to see authorization and Role-Based Access Control (RBAC) in action using Auth0.

## Get Started

You need to have `ruby` installed. I recommend using [rbenv](https://github.com/rbenv/rbenv) to manage different versions. You can install this on OS X:

```bash
brew install rbenv
```

Note that before using `rbenv`, you need to initialize it so that it's used instead of the system version. See [here](https://github.com/rbenv/rbenv#installation) for more details.

If you're in the folder of the project, running `rbenv install` installs the right version of ruby as specified by the [.ruby-version](./.ruby-version). Then, install the dependencies by running `bundle install`.

There's a `go` script that you can use to execute the different tasks.

### Running the application

Use:

```bash
./go run
```

### Executing the unit tests

Use:

```bash
./go test
```

## API Endpoints

The API server defines the following endpoints:

### 🔓 Get public message

```bash
GET /api/messages/public
```

#### Response

```bash
Status: 200 OK
```

```json
{
  "message": "The API doesn't require an access token to share this message."
}
```

### 🔓 Get protected message

> You need to protect this endpoint using Auth0.

```bash
GET /api/messages/protected
```

#### Response

```bash
Status: 200 OK
```

```json
{
  "message": "The API successfully validated your access token."
}
```

### 🔓 Get admin message

> You need to protect this endpoint using Auth0 and Role-Based Access Control (RBAC).

```bash
GET /api/messages/admin
```

#### Response

```bash
Status: 200 OK
```

```json
{
  "message": "The API successfully recognized you as an admin."
}
```

## Error Handling

### 400s errors

#### Response

```bash
Status: Corresponding 400 status code
```

```json
{
  "message": "Message that describes the error that took place."
}
```

### 500s errors

#### Response

```bash
Status: 500 Internal Server Error
```

```json
{
  "message": "Message that describes the error that took place."
}
```
