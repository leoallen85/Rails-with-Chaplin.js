define [
  'controllers/base/controller'
  'models/user'
  'views/classes_view'
], (Controller, User, ClassesView) ->
  'use strict'

  class ClassesController extends Controller

    title: 'Classes'

    historyURL: (params) ->
      'classes'

    show: (params) ->
      @view = new ClassesView()
