define [
  'views/base/view',
  'hbs!templates/login'
], (View, template) ->
  'use strict'

  class LoginView extends View

    template: template

    className: 'hello-world'

    # Automatically append to the DOM on render
    container: '#page'
    containerMethod: "html"
    
    # Automatically render after initialize
    autoRender: true
