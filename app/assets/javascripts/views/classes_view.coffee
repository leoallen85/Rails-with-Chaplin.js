define [
  'views/base/view',
  'hbs!templates/classes'
], (View, template) ->
  'use strict'

  class LoginView extends View

    template: template

    className: 'todays-classes'

    # Automatically append to the DOM on render
    container: '#page'
    containerMethod: "html"
    
    # Automatically render after initialize
    autoRender: true