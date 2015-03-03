# Main file, using common js to 

# Globally defined 
global.React = require('react')
global._ = require('underscore')
global.$ = require('jquery')
global.Backbone = require('backbone')
Backbone.$ = $


TodoApp = require('./views/TodoApp.coffee')
TodoItem = require('./models/TodoItem.coffee')

React.render(<TodoApp itemModel={TodoItem} />, document.getElementById 'todo-app')