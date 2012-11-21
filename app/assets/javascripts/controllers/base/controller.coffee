define ['chaplin'], (Chaplin) ->
  'use strict'

  class Controller extends Chaplin.Controller

    loginRequired: true

    # Place your application-specific controller features here
    initialize: ->

      if @loginRequired
        @redirectTo "login"

      super arguments...
