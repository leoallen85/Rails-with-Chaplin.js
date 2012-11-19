define [
  'chaplin'
  'models/user'
  'views/login_view'
], (Chaplin, User, LoginView) ->
  'use strict'

  class SessionsController extends Chaplin.Controller

    title: 'Login'

    historyURL: (params) ->
      ''

    create: (params) ->
      @user = new User()
      @view = new LoginView model: @user
