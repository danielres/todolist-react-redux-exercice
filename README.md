# react-redux-rails-oauth-boilerplate

<a href="https://travis-ci.org/danielres/react-redux-rails-oauth-boilerplate"><img src="https://travis-ci.org/danielres/react-redux-rails-oauth-boilerplate.svg?branch=master" alt="build status" /></a>

An experimental boilerplate with decoupled frontend/backend apps, featuring React, Redux, Redux sagas, Rails 5, Trailblazer,... with token authentication and using Facebook as an auth provider.

The spirit of this boilerplate is to provide the cleanest, most scalable possible base for developing a web app with its frontend and backend completely decoupled.

It aims to achieve maximal decoupling and componentization, both in frontend and in backend. Therefore, files are grouped by feature, not by type. 

The backend aims to minimize its dependecy to Rails, by capturing the business logic into services (simple, stateless ruby classes, and Trailblazer-like operations), an by abstracting dependencies to specific libraries (ActiveRecord, Koala gem, ...)

Resources:

* Article explaining the Feature First pattern for code organization: [Organizing Large React Applications](http://engineering.kapost.com/2016/01/organizing-large-react-applications/)
