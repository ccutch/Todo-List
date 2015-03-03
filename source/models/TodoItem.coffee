
###
This is the Backbone models for the todo list. Next step is adding in persistant data with a server
###

module.exports = TodoItem = Backbone.Model.extend
	defaults: 
		_id: 0
		title: ''
		complete: false