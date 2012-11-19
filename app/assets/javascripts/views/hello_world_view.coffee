define [
  'views/base/view',
  'text!templates/hello_world.hbs'
], (View, template) ->
  'use strict'
  
  console.debug "#page"

  class HelloWorldView extends View

    template: template

    className: 'hello-world'

    # Automatically append to the DOM on render
    container: '#page'
    # Automatically render after initialize
    autoRender: true
