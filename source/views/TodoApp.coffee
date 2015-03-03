TodoList = require('./TodoList.coffee')
AddItem = require('./AddItem.coffee')


module.exports = TodoApp = React.createClass
	getInitialState: ->
		items: []
	componentWillMount: ()->
		if !localStorage.items
			@addItem 'Make React Views', true
			@addItem 'Make Backbone Todo Model', true
			@addItem 'Data Persistence to Server'
		else
			items = JSON.parse localStorage.items
			for item in items
				@addItem item.title, item.complete, item._id
	render: ->
		<div className='todo-wrapper'>
			<div className='todo-app'>
				<AddItem addItem={@addItem} />
				<TodoList items={@state.items} checkItem={@checkItem}/>
			</div>
			<a className='clear'
				onClick={@clear} 
				href='#'>Clear list</a>
		</div>
	addItem: (title, complete = false, id = @state.items.length)->
		if title
			items = @state.items
			items.reverse()
			items.push new @props.itemModel
				title: title
				complete: complete
				_id: id
			localStorage.items = JSON.stringify @state.items
			items.reverse()
			@setState
				items: items

	clear: (evnt)->
		@setState
			items: []
		localStorage.items = JSON.stringify []

	checkItem: (id) ->
		(evnt) =>
			items = @state.items
			items.reverse()
			item = items[id]
			items[id].set 'complete', !item.get 'complete'
			localStorage.items = JSON.stringify @state.items
			items.reverse()
			@setState
				items: items