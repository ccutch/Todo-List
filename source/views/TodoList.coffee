TodoItem = require('./TodoItem.coffee')

module.exports = TodoList = React.createClass
	render: ->
		items = @props.items.map (item) =>
			id = item.get '_id'
			<TodoItem item={item} key={id} check={@props.checkItem(id)}/>
		<ul className='todo-list'>
			{items}
		</ul>