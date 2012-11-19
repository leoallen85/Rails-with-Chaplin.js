define [
  'handlebars'
  'chaplin'
  'lib/view_helper' # Just load the view helpers, no return value
], (Handlebars, Chaplin) ->
  'use strict'

  class View extends Chaplin.View

    getTemplateFunction: ->
      console.debug @template
      #@template = Handlebars.compile(@template)
      @template
