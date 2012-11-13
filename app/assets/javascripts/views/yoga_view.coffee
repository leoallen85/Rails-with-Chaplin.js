define [
  'views/base/view',
  'hbs!templates/hello_world'
], (View, template) ->
  'use strict'

  class HelloWorldView extends View

    template: template

    className: 'hello-world'

    # Automatically append to the DOM on render
    container: '#page'
    # Automatically render after initialize
    autoRender: true
