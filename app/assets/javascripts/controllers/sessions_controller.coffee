define [
  'controllers/base/controller'
  'models/user'
  'views/login_view'
], (Controller, User, LoginView) ->
  'use strict'

  class SessionsController extends Controller

    title: 'Login'

    loginRequired: false

    historyURL: (params) ->
      'login'

    create: (params) ->
      @user = new User()
      @view = new LoginView model: @user
