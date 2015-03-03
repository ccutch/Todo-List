
module.exports = AddItem = React.createClass
	getInitialState: ->
		title: null
	render: ->
		<form onSubmit={@add}
			className='add-item'>

			<input value={@state.title} 
				onChange={@changeTitle} 
				autoFocus={true}
				className='add-item-title'
				placeholder='Add an item'/>

			<button className='add-item-button'>+</button>
		</form>

	add: (evnt)->
		title = @state.title
		@props.addItem title
		@setState
			title: null	

	changeTitle: (evnt)->
		@setState
			title: evnt.target.value