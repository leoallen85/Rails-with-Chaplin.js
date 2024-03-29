#### #= require_tree ./templates

# Sets the require.js configuration for your application.
if environment == "development"
  require.config
    urlArgs: "bust=" +  (new Date()).getTime()

# #     # 3rd party script alias names (Easier to type "jquery" than "libs/jquery-1.7.2.min")
#     paths:
        
#         # Core Libraries
#         # modernizr: "libs/modernizr"
#         # jquery: "libs/jquery"
#         # underscore: "lodash"
#         # backbone: "libs/backbone"
#         "backbone.validateAll": "plugins/Backbone.validateAll"
#         # Handlebars: "libs/Handlebars"
#         # templates: "../templates"

  
#     # Sets the configuration for your third party scripts that are not AMD compatible
#     # This has been moved to config.yml so it works with r.js
#     # shim:

#     #     # Twitter Bootstrap jQuery plugins
#     #     backbone:
#     #         deps: ["underscore", "jquery"]
#     #         exports: "Backbone" #attaches "Backbone" to the window object

#     #     # Backbone.validateAll depends on Backbone.
#     #     "backbone.validateAll": ["backbone"]


#     # # Settings for the handlebars implementation
#     hbs:

#         # callback to determine path to look for helpers
#         helperPathCallback: (name) ->
#             "helpers/all"

#         templateExtension: "hbs"

#         # if disableI18n is `true` it won't load locales and the i18n helper
#         # won't work as well.
#         disableI18n: true

#     urlArgs: "bust=" +  (new Date()).getTime()

# Bootstrap the application
require [
  'yoga'
], (YogaApplication) ->
  'use strict'

  app = new YogaApplication()
  app.initialize()
